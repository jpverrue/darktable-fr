---
title: "Version 4.6.0"
aliases:
  - "darktable-4-6-0"
date: "2023-12-21"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-4.6.0.png"
---

La version 4.6.0 de darktable est sortie aujourd'hui.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.6.0 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.6.0](https://github.com/darktable-org/darktable/releases/tag/release-4.6.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```
$ sha256sum darktable-4.6.0.tar.xz
??? darktable-4.6.0.tar.xz
$ sha256sum darktable-4.6.0-x86_64.dmg
??? darktable-4.6.0-x86_64.dmg
$ sha256sum darktable-4.6.0-arm64.dmg
??? darktable-4.6.0-arm64.dmg
$ sha256sum darktable-4.6.0-win64.exe
??? darktable-4.6.0.exe
```

Lors de la mise à jour à partir de la série stable 4.4.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus,
mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.2.x.

Il est fortement conseillé de faire d'abord une sauvegarde.  

#### note importante : Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil photo,
veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri). Vous y apprendrez comment contribuer
à la constitution de l’ensemble d’échantillons d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.4 :  


- ??? commits à darktable+rawspeed  
- ??? demandes de pull traitées  
- ??? problèmes fermés  
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 4.6 et que les contributions
sont très appréciées. Veuillez consulter [le projet documentation](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable
4.6. Veuillez consulter le manuel de l'utilisateur pour plus de détails sur les
changements individuels (le cas échéant).

- L'historique d'édition est maintenant sauvegardé automatiquement de façon périodique (toutes les 10 secondes),
  lors de l'édition d'images dans la vue chambre noire. L'intervalle d'enregistrement automatique peut
  être modifié (via une préférence) ou l'enregistrement automatique peut être entièrement désactivé (en réglant l'intervalle sur 0).

- Un nouveau module de traitement _rgb primaries_ a été ajouté. Ce module peut être utilisé pour des corrections
  de couleurs délicates ainsi que pour l'étalonnage créatif. Il permet de déplacer les couleurs primaires rouges,
  vertes et bleues en utilisant les paramètres "teinte" et "pureté".

  L'opération sous-jacente sur les pixels est essentiellement la même que le mélange des canaux.

- En outre, le module _sigmoïd_ comprend désormais une nouvelle section _primaires_,
  qui peut être utilisée pour gérer avec élégance les situations d'éclairage difficiles
  (par exemple, les LED) et ajuster l'aspect général de l'image. La modification de ces
  paramètres permet d'obtenir des couchers de soleil agréables, des tons de peau améliorés, etc.
  Cette fonctionnalité ne peut être utilisée qu'avec le mode par canal de Sigmoïd et est
  librement basée sur les idées de Troy Sobotka [AgX](https://github.com/sobotka/AgX-S2O3)
  et de travaux connexes dans la [communauté Blender](https://blenderartists.org/t/feedback-development-filmic-baby-step-to-a-v2/1361663).
  Le preset "smooth" inclus devrait fournir un bon point de départ
  pour d'autres corrections utilisant cette fonctionnalité.

- Lorsque vous travaillez avec les modules Liquifier et Retouche, l'image complète non recadrée est désormais toujours affichée,
  tout recadrage étant indiqué par l'affichage d'un rectangle superposé.
  Cela permet d'utiliser des parties recadrées de l'image sans avoir à désactiver
  le module de recadrage et à le réactiver une fois l'opération terminée.

- Lors d'un panoramique ou d'un zoom dans la vue darkrom, un espace réservé en basse résolution était affiché
  jusqu'à ce que l'image soit entièrement recalculée pour la région nouvellement visible.
  Désormais, si une partie de la vue précédente est encore visible, cette partie sera immédiatement affichée en haute qualité,
  le reste de l'image étant temporairement affiché en basse qualité jusqu'à ce que la Le traitement du pixelpipe soit terminée.

  Ceci a été réalisé dans le cadre d'une refonte complète de l'affichage des images de la chambre noire,
  qui a également permis de supprimer certains sauts gênants lors du remplacement de l'espace réservé
  de basse résolution par des données d'image recalculées, ou lors du passage de la vue complète à la vue recadrée
  (lorsque les modules Recadrer, Retouche ou Liquéfier perdent le focus).
  
## Amélioration des performances

- OpenCL est désormais initialisé en arrière-plan immédiatement après le lancement de l'interface utilisateur de darktable,
  la progression étant indiquée par une série de messages popup.
  Auparavant, cette opération était effectuée avant le lancement de l'interface principale,
  ce qui pouvait entraîner des délais importants (parfois plus d'une minute)
  entre l'ouverture de darktable par l'utilisateur et l'apparition de quoi que ce soit à l'écran,
  donnant l'impression que darktable n'avait pas démarré. Notez que le traitement sera plus lent
  (puisque darktable n'utilisera que le CPU) jusqu'à ce qu'OpenCL soit complètement initialisé.

 - Un section de code openCL a été mis en œuvre pour la correction des objectifs à l'aide des métadonnées de correction intégrées.
 
 - La vitesse d'affichage des images dans la vue Carte a été augmentée de 25 %.
 
 - La vitesse d'exportation a été améliorée pour les images JPEG 2000 et TIFF noir et blanc.
 
 - Le module Aberrations chromatiques est maintenant environ 10% plus rapide lorsqu'il est exécuté sur le CPU.
  
## Autres changements

 - Le module Pixels chauds prend désormais en charge les images monochromes.

 - Le widget de superposition des guides a été supprimé du module de retouche,
   car il n'est pas nécessaire (vous pouvez toujours afficher le guide globalement).
   
 - Une session d'importation de longue durée peut désormais être annulée en cliquant
   sur la croix dans la barre de progression en bas à gauche de l'écran.

 - L'orientation automatique est désormais prise en charge lors de l'importation d'images AVIF/HEIF
   (nécessite au moins libavif 0.9.2 et/ou libheif 1.16.0).

 - Il est désormais possible de visualiser les masques matriciels (raster) de la même manière que les autres
   types de masques en cliquant sur l'icône de visualisation des masques.

 - La visualisation et la performance du masque de dématriçage double ont été améliorées.

 - Dans le module de Correction des objectifs, il est désormais possible de définir manuellement une correction supplémentaire du vignettage.

 - Dans le module 3D LUT, l'espace colorimétrique linéaire ProPhoto RGB peut désormais être sélectionné.

 - Les changements suivants ont été apportés à l'implémentation d'OpenCL :
   - Le code de benchmarking a été supprimé, car il ne produit plus de résultats valables sur les ordinateurs d'aujourd'hui.
  
   - L'option "pinned memory transfer" (transfert de mémoire épinglée) a été supprimée de la boîte de dialogue des préférences,
     mais elle peut toujours être définie périphérique par périphérique.

   - Une nouvelle option "utiliser toute la mémoire du périphérique" a été ajoutée à la boîte de dialogue des préférences.
     Sélectionnez cette option pour utiliser toute la mémoire du GPU, à l'exception d'une "marge" de 600 Mo qui est laissée
     libre pour l'utilisation par d'autres applications. Une option similaire était disponible dans les versions antérieures
     de darktable, mais la marge de manœuvre est maintenant augmentée à 600 Mo pour tenir compte de l'utilisation accrue
     de l'accélération GPU sur les systèmes modernes.

   - Un nouvel ensemble d'options a été ajouté dans les préférences onglet traitement, afin de permettre la sélection des pilotes OpenCL souhaités.
  
- Un profil de couleur intégré "P3 affichage RVB" a été ajouté pour une utilisation dans les profils d'entrée, de sortie,
  d'affichage, de travail et d'épreuvage écran.

- Le module de reconstruction des hautes lumières peut désormais être utilisé pour tous les fichiers non raw.
  
- La vitesse de défilement dans la pellicule peut désormais être augmentée en maintenant <kbd>Shift</kbd> pendant le défilement
  (la pellicule se déplace de la moitié des images visibles à la fois). Le fait de maintenir <kbd>Ctrl</kbd> durant le défilement
  produit un zoom sur la pellicule et par conséquent modifie le nombre d'images affichées De ce fait, cela modifie également
  la vitesse obtenue en maintenant <kbd>Maj</kbd>.
  
- Les fichiers PNG exportés intègrent désormais un profil de couleur codé CICP (Coding-Independent Code Points)
  en plus du profil ICC lorsque cela est possible.

- Les fichiers AVIF exportés n'intègrent plus de profil ICC superflu si le profil de couleur peut être encodé en CICP.

- L'amélioration de la mise à l'échelle et du placement des images dans la vue de sélection permet désormais de mieux
  utiliser l'espace disponible sur l'écran.

- Lorsque l'on survole les échantillons dans le module Pipette de couleurs, ces zones sont affichées sur l'image centrale et sur
  l'histogramme (si l'option correspondante est sélectionnée). Il n'est plus nécessaire d'activer le Module pipette de couleur pour ce faire.
  Ce comportement amélioré est utile, par exemple, lors de l'étalonnage.

- Il est désormais possible d'afficher une info-bulle pour un curseur ou une liste déroulante et une info-bulle distincte
  pour le bouton situé à sa droite (généralement un bouton de sélection de couleur). Cela n'était pas possible dans les versions précédentes
  de darktable, et posait un problème lorsque le bouton n'était pas directement lié au curseur (par exemple, un bouton pour l'affichage d'un masque).

- Maintenir la touche <kbd>Ctrl</kbd> tout en double-cliquant sur un curseur ou une liste déroulante dans un module de traitement
  restaure désormais tout préréglage appliqué automatiquement.

- Lorsque plusieurs formes dessinées sont regroupées (par exemple dans le masque d'un module), le module de gestion des masques
  affiche désormais une coche devant le mode de combinaison actif (dans le menu contextuel), lorsque l'on clique avec le bouton droit de la souris
  sur l'une des formes constitutives. Ceci est généralement plus facile à lire que les icônes du "diagramme de Venn"
  dans l'interface utilisateur du module principal.

- Des mnémoniques ont été ajoutés aux boîtes de dialogue et des actions par défaut ont été attribuées, de sorte qu'une pression
  sur <kbd>Enter</kbd> déclenche l'action correcte et ferme la boîte de dialogue.

- S'ils sont disponibles, plus d'attributs d'OpenEXR 3.2.0 peuvent désormais être extraits et affichés dans le module d'information sur l'image.

- Les filtres Objectifs et Boîtiers ont été ajoutés au module Filtres de collections.

- Les exportations AVIF ont été modifiées de manière à ce qu'il n'y ait plus de conversion en YUV pour le "lossless". La logique de sélection
  du quantificateur a été mise à jour et "lossy" est maintenant la valeur par défaut.

- Le contenu du de la fenêtre principale des préférences est maintenant (presque) entièrement tiré d'un seul fichier de définition
  (`darktable.xml.in`), ce qui rend sa mise en page beaucoup plus facile à modifier.

- Les menus déroulants de la boîte de dialogue des préférences utilisent désormais les mêmes widgets (bauhaus) que les menus déroulants
  du reste de l'application, offrant ainsi un comportement plus cohérent.

- Le système de configuration dispose désormais d'une meilleure précision des nombres.

- Le module des collections a été retravaillé pour un tri plus cohérent. Tous les ordres de tri par date/heure peuvent désormais être inversés
  (en plaçant la plus ancienne  ou la plus récente  en premier). L'ordre des pellicules peut également être inversé lorsqu'elles sont classées
  par identifiant (ce qui équivaut à la date de première importation de la pellicule). La préférence "trier les pellicules par" a été renommée
  de "id" à "date d'importation" pour plus de clarté.
