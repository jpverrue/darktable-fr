---
title: "darktable 3.0.0 publié"
date: "2019-12-24"
categories: 
  - "actualites"
tags: 
  - "darktable"
  - "featured"
  - "news"
coverImage: "darktable3.jpg"
---

Chaque année, l'équipe darktable nous offre une nouvelle version comme cadeau de Noël. Cette année, l'équipe s'est surpassée et nous offre une version plus que majeure.

Nous vous proposons de découvrir l'essentiel des fonctionnalités apportées par darktable 3.0, comme par exemple une toute nouvelle interface, de nouveaux modules ou encore différentes améliorations de performance...

Vous souhaitez en savoir plus ? Plus que les annonces de fonctionnalités, comme chaque année, l'article suivant vous propose ainsi une approche détaillée (toutes les nouveautés et comment les utiliser, de la possibilité de comparer des images, en passant par une édition de mots-clés plus performantes ou encore un flux de traitement entièrement RVB plus efficace et rapide) de ce que darktable 3.0 apporte et comment tirer parti de ces nouveautés : [https://linuxfr.org/news/darktable-3-0-une-version-plus-que-majeure](https://linuxfr.org/news/darktable-3-0-une-version-plus-que-majeure).

N'hésitez pas à commenter l'article sur Linuxfr !

Vous pouvez télécharger darktable 3.0 via le site du projet : [https://github.com/darktable-org/darktable/releases/tag/release-3.0.0](https://github.com/darktable-org/darktable/releases/tag/release-3.0.0)

Les paquets pour distributions Linux seront publiés prochainement par les mainteneurs de ces paquets sur les dépôts tiers habituels que sont [OpenSuse](https://software.opensuse.org/download.html?project=graphics:darktable:stable&package=darktable) ou [Pmdebruijn](https://launchpad.net/~pmjdebruijn/+archive/ubuntu/darktable-release). Cela ne dépendant pas de l'équipe darktable.

**L'équipe de darktable.fr vous souhaite une bonne lecture et de très belles fêtes !**

_En complément d'information à l'article LinuxFR, et pour ceux qui le souhaitent, vous pouvez voir ci-dessous les corrections de bugs principales et nouveaux appareils photos supportés ou dont le support a été étendu  (la liste complète est visible en anglais sur le lien Github ci-dessus) :_

### Corrections de bogues

- Le support des sélecteurs de couleur a été corrigé par une réécriture complète. Il devrait maintenant donner des valeurs correctes dans tous les cas.
- Correction de l'affichage surexposé.
- Ne désactivez pas le SSL pour les modules de stockage.
- Un bogue de longue date sur la distorsion des masques dans le module Liquify a été fixé. Cela était visible lorsqu'un masque de liquéfaction était utilisé avec le module de correction de perspective activé.
- Un bug sur le masque se déforme lors du recadrage et de la rotation, lors de l'utilisation de la rotation avec un certain angle, a été fixé.
- Correction du recadrage manuel dans le module de correction de la perspective lorsqu'il n'est pas en défaut l'orientation.
- La modification de la date/heure est maintenant enregistrée dans le XMP. Cela assure que la suppression de l'image et le rechargement conserveront les changements.
- Fixez l'orientation pour prendre en charge tous les cas tels qu'ils sont exposés dans ces exemples : https://github.com/recurser/exif-orientation-examples
- Mémorisez les états des panneaux pour chaque mode de table lumineuse.
- Correction d'un bug de recadrage et orientation dans l'importateur de table lumineuse.
- Correction du profil RVB proPhoto.
- Correction de l'analyse des métadonnées de l'objectif Exif contenant des virgules.

#### **Plugin Lua**

- L'image affichée en vue chambre noire peut maintenant être modifiée.
- La visibilité du panneau de l'interface graphique peut maintenant être interrogée et modifiée.
- La boîte à outils de la vue de la table lumineuse (filtre d'évaluation, comparateur d'évaluation, tri et direction du tri) peut maintenant être modifiée.
- La disposition de la table lumineuse et le niveau de zoom peuvent maintenant être modifiés.
- Toutes les images contenant une balise spécifique peuvent être recherchées et retournées.

### Dépendances demandées (pour la compilation)

- Gtk+ 3.22 minimum est requis (pour la nouvelle interface)
- CMake 3.10 minimum est requis.
- OpenMP 4.0 minimum est requis (dépendance optionnelle).

### Changements sur la librairie RawSpeed (support des fichiers RAW)

#### Dépendances demandées

- CMake 3.10 minimum est désormais requis.
- Pugixml 1.8 minimum est requis.
- OpenMP 4.0 minimum est requis (dépendance optionnelle).
- POSIX n'est plus nécessaire.
- zlib 1.2.11 minimum est requis (dépendance optionnelle).

#### Changements Rawspeed

- Migration vers OpenMP des flux POSIX.
- Corrections du décompresseur IIQ de la phase 1 (mise à l'échelle des quadrants, mauvaise colonne).
- Nettoyage du code à grande échelle, ce nettoyage important est toujours en cours.
- Une infrastructure CMake a été ajoutée pour permettre l'intégration de RawSpeed dans LLVM LNT / Test-Suite.
- Ajustement généralisé des performances, décompresseurs les plus touchés :
    - Sony ARW2
    - Panasonic V5
    - Phase One
    - Nikon
    - Pentax
    - Canon
    - Samsung V1 (compression = '32772')
    - Samsung V2 (compression = '32773')
- Poursuite de la collaboration avec le projet d'infrastructure du compilateur du MVLT.

### Support d'appareils photos ajoutés

#### **Support boîtier**

Epson R-D1s Epson R-D1x Fujifilm FinePix F770EXR Fujifilm FinePix S7000 Fujifilm GFX 50R (comprimé) Fujifilm X-A10 Fujifilm X-T30 (comprimé) Fujifilm XF10 Kodak DCS Pro 14N Kodak EasyShare Z981 Kodak EasyShare Z990 Leica C (Typ 112) (4:3) Leica CL (dng) Leica Q (Typ 116) (dng) Leica Q2 (dng) Leica SL (Typ 601) (dng) Leica V-LUX (Typ 114) (3:2, 4:3, 16:9, 1:1) Nikon Z 6 (14 bits non compressé, 12 bits non compressé) Nikon Z 7 (14bit-uncompressé) Olympus E-M1X Olympus E-M5 Mark III Olympus TG-6 Panasonic DC-G90 (4:3) Panasonic DC-G91 (4:3) Panasonic DC-G95 (4:3) Panasonic DC-G99 (4:3) Panasonic DC-ZS200 (3:2) Panasonic DMC-TX1 (3:2) Phase Un P30 Sony DSC-RX0M2 Sony DSC-RX100M6 Sony DSC-RX100M7 Sony ILCE-6400 Sony ILCE-6600 Sony ILCE-7RM4Catalan Tchèque Danois Allemand Espagnol européen Français Hébreu Hongrois Italien Japonais Bokmål norvégien Néerlandais Polonais Russe Slovène

#### Préréglages de la balance des blancs

Leica Q2 Nikon D500 Nikon Z 7 Olympus E-M5 Mark III Panasonic DC-LX100M2 Sony ILCE-6400

#### Profils de bruit

Leica Q2 Nikon D3 Nikon D3500 Nikon Z 6 Nikon Z 7 Olympus E-PL8 Olympus E-PL9 Panasonic DC-LX100M2 Sony DSC-RX100M5A Sony ILCE-6400 Sony SLT-A35

#### Langues supportées par darktable 3.0

Catalan Tchèque Danois Allemand Espagnol européen Français Hébreu Hongrois Italien Japonais Bokmål norvégien Néerlandais Polonais Russe Slovène

## Soutenez-nous

En choisissant de nous faire un don via l'une de ces 3 plateformes vous contribuez à la pérennité du site, du forum et au développement de darktable

Liberapay Tipeee Patreon
