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

- Corrigé : Bug de défilement dans le module des collections où l'arbre des collections ne défilait
  pas jusqu'à la position précédente lorsque l'on revenait de la chambre noire.

++++++++++++++++++++++++++++++++++++

    Fix crash when attempting to move up the top or only shape in a group in the mask manager.

    Fix collection module when using the "module" filter which was listing none of the processing modules.

    Fix iop-order user presets use. It was not possible to get a user's iop-order preset to be applied as the Darktable internal presets where always picked up first.

    Fixed a crash in variable expansion for $(SEQUENCE[n,m]).

    Fixed handling on click from filmstrip when in map and print view. On map we now properly center the image on the map. On the print view, we use the selected image as content of the main print area.

    Fixed a regression introduced in 5.0.0 where we lost the ability to read 2-channel TIFF files and files with more than 4 channels. This fix allows them to be read by the TIFF loader, whereas previously the TIFF loader rejected such files and they were loaded by a fallback loader (GraphicsMagick or ImageMagick).

    Fixed not being able to pan with a mouse in the zoomable layout.

    Fixed possibly collapsing the module header when restoring defaults.

    Fixed a case of XMP being written without actual image modification.

    Fixed a crash of Darktable when reimporting XMP having overlay images referenced.

    Fixed the support for single lib module opened at a time when in darkroom.

    Fixed xmp sidecar writing while working as a gimp plugin.

    Fixed issues when applying a style in darkroom using the Styles module.

    Fixed a possible crash when using Ctrl+z reproduced on macOS.

    Fixed Darktable crashing in enlarge-canvas module.

    Fixed Darktable crashing using details mask due to bad tiling.

    Fixed a hash calculation bug leading to pixelpipe instabilities.

    Fixed issue to handle auto-presets when the focal length is greater then 1000.

    Fixed crash on macOS when closing the darkroom's second window.

    Fixed possible jump in filmstrip when entering darkroom from full preview.

    Fixed a performance regression in haze removal module.

    Fixed reading palette-based PNG with transparency.

    Fixed possible crash in lens correction module when changing camera and/or lens model.

    Fixed crash after deleting style or preset that was selected in shortcuts dialog.

    Fixed a crash when the currently active module instance is being deleted.

    We now support the correct orientation for JPEG XL if it was specified in the format's metadata but not in Exif (or Exif is missing). We also avoid over-transformation if it is specified in both the basic data and Exif.

Lua
API Version

    API version is now 9.4.0

New Features

    N/A

Bug Fixes

    N/A

Add action support for Lua
Other Lua changes

    N/A

Notes

    When exporting to AVIF, EXR, JPEG XL, or XCF, selecting specific metadata (e.g. geo-tag or creator) is not currently possible. For AVIF, EXR, JPEG XL, and XCF formats, Darktable will not include any metadata fields unless the user selects all of the checkboxes in the export module's preference options.

    Starting with release 4.8, macOS versions older than 13.5 are not supported.

Changed Dependencies
Mandatory

    Bump SQLite requirement to 3.26

Optional

    N/A

RawSpeed changes

    Fujifilm GFX cameras now use the vendor supplied crop

Camera support, compared to 5.0.1
Base Support

    Leica SL3-S (DNG)
    Minolta DiMAGE 5
    Panasonic DC-S5D (3:2)

White Balance Presets

    N/A

Noise Profiles

    Fujifilm GFX100 II
    Fujifilm X-S20
    Fujifilm X100VI

Missing Compression Mode Support

    Apple ProRAW DNGs
    CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
    DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
    Fujifilm lossy RAFs
    Nikon high efficiency NEFs
    OM System 14-bit high resolution ORFs
    Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

Suspended Support

Support for the following cameras is suspended because no samples are available on https://raw.pixls.us:

    Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
    Fujifilm IS-1
    Kodak EasyShare Z980
    Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
    Leaf Credo 60
    Leaf Credo 80
    Olympus SP320
    Phase One IQ250
    Sinar Hy6/ Sinarback eXact
    ST Micro STV680

Translations

    Albanian
    Brazilian Portuguese
    Chinese (Simplified)
    Chinese (Traditional)
    Czech
    Dutch
    European Spanish
    Finnish
    French
    German
    Hungarian
    Japanese
    Polish
    Slovenian
    Swedish
    Ukrainian


