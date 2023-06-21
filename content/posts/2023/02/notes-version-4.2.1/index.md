---
title: "Version 4.2.1"
aliases:
  - "Darktable-4-2-1"
date: "2023-02-23"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
  -  "news"
author:
  - "jpv"

coverImage: "dt_logo-4.2.1.png"
---

La version 4.2.1 est sortie aujourd'hui.

Voici la version française des "notes de version", traduite avec l'aide de Deepl translator.

Les liens pour le téléchargement sont disponibles sur [darktable.org/install/](https://www.darktable.org/install/)
___

Nous sommes fiers d'annoncer la nouvelle version corrective de darktable, 4.2.1 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.2.1](https://github.com/darktable-org/darktable/releases/tag/release-4.2.1).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz.

Les sommes de contrôle sont :
```
$ sha256sum darktable-4.2.1.tar.xz
603a39c6074291a601f7feb16ebb453fd0c5b02a6f5d3c7ab6db612eadc97bac darktable-4.2.1.tar.xz

$ sha256sum darktable-4.2.1_arm64.dmg
d037a23e8b37f6971a1f2b7c4cf3e03647b168ad2fb43080761d7a307b43048d darktable-4.2.1_arm64.dmg

$ sha256sum darktable-4.2.1_x86_64.dmg
993a29685397c6e1a429d84be578da9271eefc06d2c75c10818ffc00b7d04a00 darktable-4.2.1_x86_64.dmg

$ sha256sum darktable-4.2.1-win64.exe
31c4d6c522818eda87e48df44f267afd531339ef9d374fa02d44891e3755f7b5 darktable-4.2.1-win64.exe
```
Lors de la mise à jour à partir de la série stable 4.0.x, veuillez garder à l'esprit que vos modifications seront préservées pendant ce processus, mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.0.x.
Il vous est fortement conseillé de faire une sauvegarde au préalable. (N.d.T. : Avant les montées de version, des sauvegardes de la base de données sont  effectuées automatiquement, mais par contre le fichier de configuration n'est pas concerné par ces sauvegardes. Pour tout savoir à ce propos, lisez [CECI](https://darktable.fr/les-fichiers-de-configuration)).

#### Note importante : pour s'assurer que darktable puisse continuer à supporter le format de fichier brut pour votre appareil photo, *s'il vous plaît* lisez [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) sur comment et avec quels échantillons bruts vous pouvez contribuer pour vous assurer que nous ayons l'ensemble *complet* d'échantillons bruts pour votre appareil photo sous licence CC0 !

### Depuis darktable 4.2.0 :
Près de 300 commits à darktable+rawspeed
89 pull requests traitées
18 problèmes fermés

## Les grandes nouveautés

N/A

## Autres changements


- Les fichiers JPEG sont identifiés à l'aide des  [octets magiques](https://fr.wikipedia.org/wiki/Nombre_magique_%28programmation%29#Dans_les_données)  au lieu de l'extension de fichier. Cela aide dans les cas où les images JPEG se retrouvent dans des fichiers avec des extensions inattendues.

- Il devient possible d'attribuer des raccourcis aux boutons d'accès rapides, aux styles et aux préréglages en bas de la vue de la chambre noire.

- Ajout d'une section repliable au module sigmoïde afin que  les commandes qui ne sont pas utilisées dans les scénarios de traitement standard soient cachées par défaut.

- Quelques modifications mineures aux superpositions d'informations dans  les vues sélection de la table lumineuse pour les rendre moins intrusives.

## Corrections de bogues


- Correction d'un éventuel mauvais transfert de mémoire, épinglée sur OpenCL.

- Correction d'un bogue dans la fonction de normalisation de la date et de l'heure qui entraînait la corruption des horodatages de capture d'image lorsqu'ils contenaient un fuseau horaire avec un décalage négatif.

- Correction des messages du bandeau supérieur contenant le symbole "%".

- Correction du module Collections lors de l'utilisation de règles d'exclusion quand le premier filtre est vide.

- Correction de l'affichage de l'histogramme de la courbe RVB lorsque "compenser le gris moyen" est défini.

- Correction d'une possible boucle infinie quand un module ne peut se charger.

- Respecter correctement la préférence "cacher l'histogramme" lors du redémarrage.

- Correction du crash de darktable-chart.

- Correction des calculs du masque Y0 dans le module dématriçage.

- Ne plus utiliser la fonction fscanf() pour le chargement de la configuration afin de contourner une implémentation cassée de cette fonction dans Windows.

- Ajout de l'option RYB vectorscope au fichier de configuration de darktable pour assurer un paramétrage correct de l'affichage de l'histogramme au démarrage.

- S'assurer que les popups larges s'affichent correctement sur le même écran que le widget associé.

- Correction d'un crash possible la vue Capture.

- Les boutons oui  et non dans les boîtes de dialogue répondent aux raccourcis standards `alt+y` et `alt+n`.

- Correction du nettoyage des préférences, qui était totalement inefficace en raison d'un ordre de chargement incorrect.

- Ajout d'un lien vers la documentation en ligne pour le  module sigmoïde.

- Correction de l'infobulle sur les sections repliables du module Calibration des couleurs.

- Correction de la mauvaise lecture de la profondeur binaire des images HEIF, qui entraînait une sélection incorrecte du profil de couleur pour les images sans données de profil de couleur intégrées.

- Correction de l'invalidation des instantanés, qui était trop pessimiste et rendait le changement d'instantanés lent.

- Correction de certains messages dans le module LUT.

## Lua

N/A

## Notes

N/A

## Dépendances modifiées

- Mise à jour de la version de LibRaw 0.21.1.
Pour les systèmes fournissant LibRaw 0.21.1 ou plus récent, il est maintenant possible de désactiver la construction de la copie groupée en définissant `-DDONT_USE_INTERNAL_LIBRAW=ON`

### Obligatoire

- Augmentation de la version minimale requise de CMake de 3.10 à 3.18.

### Facultatif
- La version minimale requise de libheif augmente de 1.9.0 à 1.13.0.
- La version minimale requise de libavif recule de 0.9.1 à 0.8.2.

## Modifications de RawSpeed

- Refactorisation massive du décompresseur Fuji. Jusqu'à -25% de temps en moins.
- Fuji GFX100(S) : correction des niveaux de noir/blanc du capteur 16 bits
- Correction du décodage des raws Fuji compressés avec une grande taille de fichier

## Support des appareils photo, par rapport à la version 4.2.0

### Support de base
- Canon EOS Kiss X10
- Canon EOS Kiss X10i
- Leica M9 (dng)
- Nikon Z 30 (12 bits compressé, 14 bits compressé)
- OM System OM-1
- OM System OM-5
- Panasonic DC-G95D (4/3)
- Panasonic DC-G99D (4/3)
- Ricoh GR IIIx (dng)

### Support des modes de compression manquants
- Fujifilm "non-lossless"/lossy
- Nikon haute efficacité
- Sony sans perte

### Préréglages de la balance des blancs
- Nikon Z 9

### Profils de bruit
- Fujifilm GFX100S
- Fujifilm X-H2
- Fujifilm X-H2S
- OM System OM-1
- Sony ILCE-7SM3
- Canon EOS 250D / Kiss X10 / Rebel SL3 / 200D Mark II
-Canon EOS R7

### Support suspendu
Le support est suspendu, car les échantillons nécessaires à la caractérisation de ces équipements sont absents sur la plateforme [raw.pixls.us](https://raw.pixls.us).
- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm FinePix S9600fd
- Fujifilm IS-1
- GoPro FUSION
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Minolta DiMAGE 5
- Olympus SP320
- Panasonic DMC-FX150
- Pentax Q10
- Phase One IQ250
- Samsung GX10
- Samsung GX20
- Samsung EK-GN120
- Samsung SM-G920F
- Samsung SM-G935F
- Sinar Hy6/ Sinarback eXact
- ST Micro STV680

## Traductions

- Allemand
- Espagnol européen
- Finnois
- Français
- Hongrois
- Italien
- Japonais
- Néerlandais
- Polonais
- Portugais du Brésil
- Russe
- Slovène
- Albanais
- Turc (nouveau)
- Ukrainien
- Chinois - Taiwan

<div align="right">Jean-Pierre Verrue</div>
