---
title: "Version corrective 4.0.1"
aliases:
  - "Darktable-4-0-1"
date: "2022-09-20"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
  
coverImage: "darktable-4-0-1.png"
---
La version 4.0.1 est sortie ce W.E. Voici la traduction des notes de version

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.0.1 !

La version Github est ici : https://github.com/darktable-org/darktable/releases/tag/release-4.0.1.

Comme toujours, veuillez ne pas utiliser le tarball autogénéré par Github, mais uniquement notre fichier tar.xz

Les sommes de contrôle sont les suivantes :
```bash 
$ sha256sum darktable-4.0.1.tar.xz
5fef81e0c0079977a3cdc3627eed777280c2346d023c5d176c1f4a62cbe51d68 darktable-4.0.1.tar.xz
$ sha256sum darktable-4.0.1.1_x86_64.dmg
f4914a6c49a2e3a815c75b199d8da31a3160e179e8272e8fb1075ce48b188e65 darktable-4.0.1.1_x86_64.dmg
$ sha256sum darktable-4.0.1.1_arm64.dmg
961af68e76fb274b0451bf287a9eb243f917ef68b933d48963534bfe328a955f darktable-4.0.1.1_arm64.dmg
$ sha256sum darktable-4.0.1.exe
96b584edbc7d65f26b76dc7c57b9dce6fe33792b839f0ac4c712cd6834051dad  darktable-4.0.1-win64.exe
```
Lors de la mise à jour depuis la série stable 3.8.x, gardez à l'esprit que vos modifications seront préservées durant ce processus, mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 3.8.x.
Il est fortement conseillé de faire une sauvegarde au préalable.

Note importante : pour s'assurer que darktable continuera à supporter le format de fichier brut de votre appareil photo, veuillez lire la liste en fin de ce post pour vous assurer que nous avons le jeu complet d'échantillons bruts pour votre appareil photo. Pour contribuer, lisez ce post : https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri
##### Depuis darktable 4.0.0:
Près de 180 commits pour darktable + rawspeed.

103 pull requests traités,

19 issues fermées.
## Les Nouveautés
N/A
## Autres changements
- les Variables $(MAKER) et $(MODEL) peuvent maintenant être utilisées lors de l'importation des fichiers
- Afficher "infini" pour une très grande distance de mise au point, comme le prévoit la norme Exif.
## Corrections de Bugs    
 - Correction des indicateurs surexposés après le recadrage.
 - Correction de la création de DNG dans le module de fusion HDR (ColorMatrix pouvait être zéro).
 - Correction de la vue sélection qui pouvait être défectueuse la seconde fois lors du changement du nombre d'images (par exemple, lors du rejet d'une image)
 - Correction de la réinitialisation de l'interface graphique du module d'exportation lors de l'utilisation du format TIFF.
 - Correction de la copie de l'ordre des modules en mode fusion lorsque plusieurs instances d'un module sont utilisées dans les images de destination.
 - Correction du problème de filtrage des couleurs sous Windows.
 - Correction d'un possible écran noir lors de l'utilisation de la balance des blancs automatique sous Windows.
 - Conservation correcte des horodatages d'accès et de modification lors de l'utilisation de la copie et de l'importation.
 - Correction de la réinitialisation du sélecteur de couleur dans le module des zones de couleur.
 - Correction du lien d'aide pour la gestion de la disposition des modules.
 - Correction d'un crash après l'échec d'une tentative de connexion d'un appareil photo.
 - Ajout de la prise en charge du mode fast pipe sur le module de diffusion et netteté. Le mode fast pipe est utilisé pour contourner les modules gourmands en temps d'exécution tout en modifiant de manière interactive les paramètres d'un autre module lorsque ce dernier ne nécessite pas un affichage précis de l'image. Par exemple, il est utilisé pour améliorer la réactivité de l'affichage à l'écran dans les modules de recadrage et de rotation/perspective.
 - Correction de certains types d'action de bouton de sélection de couleur.
 - Correction d'un crash dans l'exportation Latex.
 - Correction de l'exportation de la galerie du site web.
 - Correction d'une fuite de file-handle.
 - Correction d'une corruption de mémoire dans le module renforcer la netteté qui pouvait conduire à un plantage.
 - Correction de l'affichage de l'histogramme du vectorscope afin d'éviter de recadrer les nœuds primaires et secondaires (haut et bas).
 - Ajout d'une association de type de média HEIF pour le bureau.
 - Correction d'un éventuel plantage lors de l'utilisation du vérificateur de couleur sans un patch correctement sélectionné.
 - Correction du tri des fichiers LUT 3D et alignement à gauche des entrées pour une meilleure lisibilité.
 - Désactiver la mise à l'échelle lorsque la taille d'exportation est définie sur les dimensions de l'image originale (0), car cela n'a pas de sens et pouvait faire planter darktable.
 - Correction d'un éventuel crash lors de l'application d'un décalage temporel aux images.
 - Correction de l'information sur la taille de l'image affichée à l'écran (problème d'arrondi).
 - Correction de la mémoire requise pour le masque de fusion.
 - Correction d'un crash lors du zoom avec les doigts sur une table lumineuse vide.
 - S'assurer que les limites de taille des formats externes sont respectées lors de l'exportation.
 - Quelques corrections CSS sur la couleur, le contraste, le positionnement des combo-boxes, la taille des cases à cocher, les barres de défilement et les barres de progression.
 - Correction de l'en-tête JPEG APP1 (sauter l'en-tête de 6 octets).
 - Correction de certaines traductions manquantes dans les onglets des carnets de notes.
 - Utilisation d'un arrière-plan géré par couleur pour les curseurs du module RVB de balance des couleurs.
 - Allume les touches de modification midi lorsque shift/ctlr/alt sont pressés.
 - Quelques améliorations de vitesse (options de compilateur ajustées, quelques routines optimisées)

## Lua
N/A
## Notes
N/A
## Changement de dépendances
N/A
## Changements RawSpeed
N/A
## Support de nouveaux appareils depuis darktable 3.8.
### Support de base
- CANON EOS R7
- CANON EOS R10
### Préréglages de balance des blancs
### Profils de correction de bruit
- NIKON D780
- NIKON D4s
- CANON EOS M50 Mark II
- CANON EOS 850D
### Matrices de couleur personnalisées
### Support Suspendu
Pas d'échantillons de fichiers RAW disponibles sur raw.pixls.us
- Canon EOS M2
- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm FinePix HS50EXR
- Fujifilm FinePix S6000fd
- Fujifilm FinePix S9600fd
- Fujifilm IS-1
- GoPro FUSION
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Leica D-LUX 6
- Minolta DiMAGE 5
- Nikon 1 J4
- Nikon 1 S1
- Nikon Coolpix P7700
- Nikon D1H
- Nikon D2H
- Nikon D3S
- Olympus E-10
- Olympus SP320
- Olympus SP570UZ
- Panasonic DMC-FX150
- Panasonic DMC-G2
- Pentax K200D
- Pentax K2000
- Pentax Q10
- Phase One IQ250
- Samsung GX10
- Samsung GX20
- Samsung NX5
- Samsung NX10
- Samsung NX11
- Samsung NX20
- Samsung NX2000
- Samsung EK-GN120
- Samsung SM-G920F
- Samsung SM-G935F
- Sinar Hy6/ Sinarback eXact
- Sony DSLR-A380
- Sony DSLR-A560
- ST Micro STV680
## Traductions
- Albanais
- Tchèque
- Portugais brésilien
- Chinois - Chine
- Chinois - Taiwan
- Néerlandais
- Espéranto
- Espagnol européen
- Finnois
- Français
- Allemand
- Hébreu
- Hongrois
- Italien
- Japonais
- Russe
- Slovène
- Turc
- Ukrainien
