---
title: "Version 5.0.1"
aliases:
  - "darktable-5-0-1"
date: "2025-02-12"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-5.0.1.png"
---

La version 5.0.1 de darktable est sortie ce samedi.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

Les binaires pour macOS, windows et appimage, sont disponibles en bas
de [cette page Github](https://github.com/darktable-org/darktable/releases/tag/release-5.0.1)
Ils seront également disponibles sur la page [install du site dartable.org](https://www.darktable.org/install/) dans quelques jours.
Les versions compilées spécifiquement pour les différentes distributions Linux seront disponibles
selon la diligence de leurs packageurs. En attendant, vous pouvez utiliser en toute sécurité,
la version [appimage](https://github.com/darktable-org/darktable/releases/download/release-5.0.1/Darktable-5.0.1-x86_64.AppImage).

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version corrective de darktable, 5.0.1 !

La version github est disponible ici :
[https://github.com/darktable-org/darktable/releases/tag/release-5.0.0](https://github.com/darktable-org/darktable/releases/tag/release-5.0.1).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Si vous ne construisez que pour vous-même
sans créer de paquetage pour une distribution quelconque, le clonage du code source
dans git est un moyen encore plus pratique.

Les sommes de contrôle sont :
```
$ sha256sum darktable-5.0.1.tar.xz
4a918d094ebba983ef67a10cc715c3d7e8ca738009920a9ff65d33417b6dd984  darktable-5.0.1.tar.xz

$ sha256sum darktable-5.0.1-x86_64.dmg
ce05f2a9efa4cde090a939e42813ee98cf98f5b5e6a14304c9d8c3d71a589a01  darktable-5.0.1-x86_64.dmg

$ sha256sum darktable-5.0.1-arm64.dmg
66296ab8d26e4ac14061a5407eafe0f31ddb7ac1de9995bd2e05043e9c0b0c60  darktable-5.0.1-arm64.dmg

$ sha256sum darktable-5.0.1-arm64-13.5.dmg
19878fca36ab52d6b629ae6b372345665809df3941fd9e168b470237ed6cb4b9  darktable-5.0.1-arm64-13.5.dmg

$ sha256sum darktable-5.0.1-win64.exe
2ea64535f1d42793f2ef53aec971eca43818748aba036b5e778624297ea0fb34  darktable-5.0.1-win64.exe

$ sha256sum darktable-5.0.1-x86_64.AppImage
881e4cfb79c473404f871d48bd60ed2d6234f90f71e33c1bdc033dafd6901f06  Darktable-5.0.1-x86_64.AppImage
```

Lors de la mise à jour à partir de la série stable 4.8.x, gardez à l'esprit que
vos modifications seront préservées pendant ce processus, mais que la nouvelle
bibliothèque et la configuration ne seront plus utilisables avec la version 4.8.x.
<BR>Il est fortement conseillé d'effectuer d'abord une sauvegarde.

#### Note importante :
Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil
photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri).
Vous y apprendrez comment contribuer à la constitution de l’ensemble d’échantillons
d’images (sous licence CC0) pour votre boîtier.

Depuis darktable 5.0.0 :

- 105 commits to darktable+rawspeed
-  57 pull requests handled
-  15 issues closed

_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 5.0
et que toutes les contributions sont très appréciées. Veuillez consulter la
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Principales fonctionnalités ajoutées à Darktable 5.0.1.

- N/A

## Améliorations de l'interface utilisateur (UI/UX)

- N/A

## Améliorations des performances

- Amélioration des performances pour la suppression de l'historique des images sélectionnées.

## Autres changements

- Harmonisation de la sélection des styles dans les paramètres d'impression suite
  à la mise à jour du module d'exportation pour la version 5.0.

- Darktable inclut désormais la base de données Lensfun dans l'AppImage.

- Centrer les étiquettes de section de module repliables.

## Correction de bogues

- Corrigé : Bug de défilement dans le module des collections où l'arbre des collections
  ne défilait pas jusqu'à la position précédente lorsque l'on revenait de la chambre noire.

- Corrigé : Crash lors d'une tentative de déplacement vers le haut de la première ou
  de la seule forme d'un groupe dans le gestionnaire de masques.

- Corrigé : Lors de l'utilisation du filtre "module" dans le module collection qui
  ne listait aucun des modules de traitement.

- Correction de l'utilisation des préréglages de l'utilisateur Ordre des modules. Il n'était
  pas possible d'appliquer le préréglage Ordre des modules d'un utilisateur car les préréglages
  internes de Darktable étaient toujours pris en compte en premier.

- Corrigé : Un crash ilors de l'expansion de la variable $(SEQUENCE[n,m]).

- Corrigé : Prise en compte du clic depuis le bandeau dans la vue Carte et la vue Impression.
  Dans a vue Carte, l'image est désormais correctement centrée sur la carte. Dans la vue
  Impression, nous utilisons l'image sélectionnée comme contenu de la zone d'impression principale.

- Corrigé : Une régression introduite dans la version 5.0.0 avec laquelle nous avons perdu la
  possibilité de lire les fichiers TIFF à 2 canaux et les fichiers à plus de 4 canaux.
  Cette correction leur permet d'être lus par le chargeur TIFF, alors qu'auparavant le chargeur
  TIFF rejetait ces fichiers et qu'ils étaient chargés par un chargeur de repli
  (GraphicsMagick ou ImageMagick).

- Corrigé : Impossibilité d'effectuer un panoramique à l'aide de la souris dans la Vue tazble lumineuse zoomable.

- Corrigé : Réduction possible de l'en-tête du module lors du rétablissement des valeurs par défaut.

- Corrigé : Un cas d'écriture de fichier XMP sans modification de l'image courante.

- Corrigé : un crash de Darktable lors de la réimportation d'un fichier XMP référençant
- des images composites.

- Corrigé : La prise en charge d'un seul module de librairie ouvert à la fois dans la chambre noire.

- Corrigé : Écriture d'un fichier sidecar XMP lors d'un fonctionnement en tant que plugin gimp.

- Corrigé : Problèmes lors de l'application d'un style dans la chambre noire à l'aide du module Styles.
  
- Corrigé : Un crash possible en utilisant Ctrl+z. Reproduit sur macOS.

- Corrigé : Darktable Plante lors de l'utilisation du module Agrandir le cannevas.

- Corrigé : Darktable plante lurs de l'utilisation du masque détails. Provoqué par un défaut de tuilage.

- Corrigé : Un bug dans le calcul du hachage entraînant des instabilités au niveau du pixelpipe.

- Corrigé : Problème de gestion des préréglages automatiques lorsque la longueur focale
  est supérieure à 1000.

- Corrigé : Plantage sur macOS Lors de la fermeture de la second fenêtre de la chambre noire.

- Corrigé : saut possible dans le bandeau lorsqu'on entre dans la chambre noire à partir
  de la prévisualisation complète.

- Corrigé : Une régression de performance dans le module Duppression de la brume.

- Corrigé : Lecture d'un PNG basé sur une palette avec transparence.

- Corrigé : possibilité de plantage dans le module Correction des objectifs lors d'un changement
  de modèle d'appareil photo et/ou d'objectif.

- Corrigé : possibilité de plantage dans le module Correction des objectifs lors d'un changement
  de modèle d'appareil photo et/ou d'objectif.

- Corrigé : Un crash lorsque l'instance de module actuellement active est supprimée.
  
Nous prenons désormais en charge l'orientation correcte pour les fichiers JPEG XL si elle a
été spécifiée dans les métadonnées du format, mais pas dans les données Exif (ou si les
données Exif sont manquantes). Nous évitons également la sur transformation si l'orientation
est spécifiée à la fois dans les données de base et dans les données Exif.

## Lua
### Version de l'API

- La version de l'API est la 9.4.0

### Nouvelles fonctionnalités

N/A

### Corrections de bugs

N/A

### Ajout d'un support d'action pour Lua

### Autres changements LuaAdd action support for Lua

N/A

## Notes

- Lors de l’exportation vers les formats AVIF, EXR, JPEG XL ou XCF,
  la sélection de métadonnées spécifiques (par exemple, géomarquage ou
  créateur) n’est actuellement pas possible. Pour les formats AVIF, EXR,
  JPEG XL et XCF, darktable n’inclura aucun champ de métadonnées à moins que
  l’utilisateur ne sélectionne toutes les cases à cocher dans les options
  de Préférence du module Exporter.

Depuis la version 4.8, darktable ne prend plus en charge les versions de macOS antérieures à 13.5.

## Changement de dépendences

### Obligatoire(s)

- Passage à la version 3.26 pour SQLite

### Optionnelle(s)

N/A

## Changements RawSpeed

- Les appareils photo Fujifilm GFX utilisent désormais le recadrage fourni par le constructeur.

## Nouveaux Support d'appareils depuis la version 5.0.0

### Support de base

- Leica SL3-S (DNG)
- Minolta DiMAGE 5
- Panasonic DC-S5D (3:2)

### Préréglages de la balance des blancs

N/A

### Profils de réduction de bruit

- Fujifilm GFX100 II
- Fujifilm X-S20
- Fujifilm X100VI

### Absence de prise en charge des fichiers raw compressés

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- OM System 14-bit high resolution ORFs
- Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### fin de Support

La prise en charge des appareils suivants est suspendue car aucun échantillon n’est disponible sur raw.pixls.us :

- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm IS-1
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Olympus SP320
- Phase One IQ250
- Sinar Hy6/ Sinarback eXact
- ST Micro STV680
  
## Traductions

- Albanais
- Allemand
- Chinois (Simplifié)
- Chinois (Traditionel)
- Espagnol européen
- Finlandais
- Français
- Hongrois
- Japonais
- Néerlandais
- Polonais
- Portugais Brézilien
- Tchèque
- Slovène
- Suédois
- Ukrainien

