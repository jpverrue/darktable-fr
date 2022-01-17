---
title: "darktable et OpenCL : j'achète une carte graphique ou pas ?"
date: "2018-10-19"
categories: 
  - "tutoriels"
tags: 
  - "opencl"
  - "performance"
---

Une des questions les plus posées, et à juste titre : est-ce que ça vaut la peine d'investir dans une carte graphique pour utiliser darktable ? Cela fait 1 mois que je programme, teste (et fait crasher) OpenCL, voici donc mes observations, de l'intérieur du code.

## OpenCL, quesséça ?

Une carte graphique est un processeur très particulier, conçu à la base pour du traitement en temps-réel (sans latence) de grands ensemble de données : j'ai nommé la synthèse d'environnements graphiques 3D pour le jeu vidéo. Les grands ensemble de données, ce sont les pixels de l'écran dont il faut calculer chaque valeur RGB en fonction de la position du joueur dans le monde virtuel.

Pour réaliser ce traitement, il faut beaucoup de cœurs. Les cœurs sont des unités élémentaires de calcul, avoir un processeur à 2 cœurs est (un peu) comme avoir 2 processeurs. Votre processeur en a probablement 2, 3, 4, mais une carte graphique en a au moins 1024. Ça fait 1024 opérations qu'on peut traiter en parallèle, en même temps. Jusque dans les années 2000, on pensait que plus un processeur était rapide, mieux c'était. Puis on a découvert que c'est plus efficace et moins coûteux d'avoir plus de cœurs que plus de GHz. D'ailleurs, une carte graphique a une fréquence de calcul beaucoup plus faible qu'un processeur.

Petit à petit, on s'est dit que ce processeur lourdement parallélisable pourrait être utilisé en temps-différé pour d'autres usages que le jeu, mais toujours pour du traitement de pixels. L'avantage du temps-différé, c'est qu'on peut optimiser plus de choses.

OpenCL est donc un « langage » qui permet aux développeurs d'envoyer n'importe quel calcul parallélisable effectué sur des données découpables à une carte graphique (entre autres). Il a l'immense avantage d'être portable, c'est à dire qu'il n'y a besoin d'aucune modification du code pour que le programme fonctionne peu importe le système d'exploitation et la marque de la carte graphique. Cependant, Apple, qui a pourtant inventé l'OpenCL il y a 10 ans, a décidé d'en abandonner le support sous Mac OS après la version 10.14, au profil de Metal.

## darktable : OpenCL inclus, mais pas à tous les étages

Pour faire simple, OpenCL fonctionne de la façon suivante :

1. l'image est lue par darktable sur le disque dur
2. elle est stockée dans la mémoire vive de l'ordinateur (RAM)
3. le processeur prépare l'image dans la RAM
4. l'image est copiée de la RAM vers la mémoire vive de la carte graphique (vRAM)
5. la carte graphique calcule le contenu des modules
6. l'image est recopiée de la vRAM vers la RAM
7. le processeur enregistre  l'image sur le disque dur.

Ça, c'est quand toute la pile de modules utilisés fonctionne en OpenCL : l'image reste sur la vRAM pendant toute la chaîne de calcul, et n'est renvoyée à la RAM qu'à la toute fin.

Et ça n'arrive jamais, parce que tous les modules de darktable n'ont pas une version OpenCL. À chaque module qui travaille sur processeur, il faut ré-expédier l'image sur la RAM, et la ré-importer ensuite sur la vRAM, ce qui prend du temps et cause des latences. À la fin, c'est 10-20% du temps de traitement qui est perdu dans ces allers-retours (qu'on appelle entrées/sorties, en anglais : input/output ou simplement I/O).

Voici la liste exhaustive des modules qui ne fonctionnent pas en OpenCL (à la version 2.6 de darktable):

- dématriçage Amaze
- pixels chauds
- suppression de la brume
- profil de couleur d'entrée et de sortie (seulement si Little CMS est actif ou si votre profil ICC contient une LUT/table de correspondance)
- homogénéisation
- filigrane
- grain
- correction des taches
- réduction du bruit RAW
- réduction du bruit (bilatéral)
- mappage des tonalités
- contraste de couleur
- cadre décoratif
- zones
- suppression des franges
- effet Orton

Ceux qui font très mal, ici, sont les modules de débruitage et de dématriçage (au moins la moitié du temps d'exécution à eux 3) puisqu'ils arrivent entourés par des modules OpenCL. Donc, en plus d'être lourds (de par leurs algorithmes), ils ajoutent des latences I/O. Et, pour couronner le tout, ce sont aussi les plus difficiles à porter sous OpenCL.

## Là où ça fait du bien

En revanche, sur certains modules très lourds, OpenCL peut multiplier les performances (individuelles) de 2 à 20. C'est notamment le cas pour :

- égaliseur
- contraste local
- réduction du bruit (profil)
- réduction du bruit (non-local)
- dématriçage PPG
- tous les modes de fusion de masques (dessinés, paramétriques, etc.)

Certains modules deviennent même difficilement utilisables sans :

- liquéfier
- retouche (nouveauté dans 2.6)

Enfin, sur certains des modules, OpenCL permet de passer de « pas grand chose » à « presque rien » (quelques millisecondes sur une image de 36 Mpix) :

- orientation
- recadrer et pivoter
- reconstruction des couleurs
- vibrance
- balance couleur
- coloriser
- mappage couleurs
- velvia
- virage partiel
- vignetage
- zones de couleurs

## Bilan

Il est très difficile de dire si OpenCL vaut la peine dans un cas précis ou pas. En effet, celà dépend :

- du processeur (certains sont meilleurs que la carte graphique)
- de la carte graphique
- de la version des pilotes utilisés
- du système d'exploitation/du noyau Linux
- de la fréquence du BUS de la mémoire vive
- de la taille des photos retouchées
- des modules les plus souvent utilisés.

Il est certain que pour un professionnel, ou même pour un amateur sérieux, et surtout avec les capteurs actuels à plus de 40 Mpix, la carte graphique va apporter confort et efficacité. D'autant plus que le futur de la photo est du côté des intelligences artificielles, qui ont besoin du parallélisme pour fonctionner dans des délais raisonnables.

En moyenne, en additionnant les pertes par latences I/O et l'amélioration apportée individuellement aux modules, il faut s'attendre à un gain global de temps de l'ordre de 2 à 3 à l'exportation et à l'utilisation. C'est surtout ceux qui travaillent à hauts ISO régulièrement qui vont apprécier l'OpenCL sur les modules de débruitage compatibles.

En cas de ressources matérielles limitées, tenez vous à distance des modules suivants (dans l'ordre du pire au moins pire) :

- dématriçage Amaze (utilisez PPG)
- grain
- réduction du bruit (bilatéral)
- réduction du bruit RAW
- suppression de la brume (_reste à voir si je vais être capable de le porter sous OpenCL_).

De plus, le nouveau module de balance des couleurs que je viens de coder (et qui vient d'être intégré à la branche officielle de darktable) regroupe à lui seul les fonctionnalités des modules :

- contraste, luminosité, saturation
- virage partiel
- courbe des tonalités / courbes de base
- niveaux

tout en étant 2 à 12 fois plus rapide (suivant les réglages) que ces 5 modules combinés (en OpenCL), et pour un résultat souvent meilleur et plus facile à réaliser.

darktable est modulaire, pour le meilleur et pour le pire, mais le choix des modules vous permet aussi de choisir le niveau de lourdeur algorithmique désiré par rapport au résultat attendu.
