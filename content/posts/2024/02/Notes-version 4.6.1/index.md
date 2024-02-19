---
title: "Version 4.6.1"
aliases:
  - "darktable-4-6-1"
date: "2024-02-17"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-4.6.1.png"
---

La version 4.6.1 de darktable est sortie aujourd'hui.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.6.1 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.6.1](https://github.com/darktable-org/darktable/releases/tag/release-4.6.1).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :We're proud to announce the new feature release of darktable, 4.6.1!

```
$ sha256sum darktable-4.6.1.tar.xz
??? darktable-4.6.1.tar.xz
$ sha256sum darktable-4.6.1-x86_64.dmg
??? darktable-4.6.1-x86_64.dmg
$ sha256sum darktable-4.6.1-arm64.dmg
??? darktable-4.6.1-arm64.dmg
$ sha256sum darktable-4.6.1-win64.exe
??? darktable-4.6.1.exe
```

Lors de la mise à jour à partir de la série stable 4.4.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus,
mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.4.x.

Il est fortement conseillé de faire d'abord une sauvegarde.  

#### note importante : Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri). Vous y apprendrez comment contribuer à la constitution de l’ensemble d’échantillons d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.6.0 :  


- 606 commits à darktable+rawspeed  
- 57 demandes de pull traitées  
- 12 problèmes fermés

## Les grandes nouveautés

- La documentation est maintenant complète pour darktable 4.6 et inclue les traductions en
  Ukrainien, Polonais et Néerlandais.
  Voir [https://www.darktable.org/resources](https://www.darktable.org/resources)
  pour plus d'informations.

## Amélioration des performances

- Correction de certains passages du code OpenCL qui pouvaient produire une sortie détériorée
  ou non traitée sans signaler le problème au pixel-pipe.

## Autres changements

- La recherche d'images dans la boîte de dialogue d'importation est désormais effectuée
  de manière asynchrone. Cela signifie qu'une longue analyse (due à l'utilisation du mode
  récursif dans un répertoire contenant un grand nombre de sous-répertoires et de fichiers),
  peut être interrompue en sélectionnant un autre endroit /répertoire ou en décochant le mode récursif.

## Correction de bogues

- Correction d'un problème avec l'importation d'images en mode récursif. L'utilisation de ce mode
  sans avoir préalablement sélectionné un répertoire pouvait geler darktable (bien qu'il finisse par
  s'en remettre) car il devait analyser l'ensemble du disque.

- Lors de l'importation d'images en mode récursif, les vignettes des images découvertes
  dans les sous-répertoires sont désormais correctement affichées.

- Correction de fuites de mémoire et de ressources dans le chargeur d'images QOI.

- Correction du chargeur d'images RGBE.

- Correction d'un éventuel problème d'affichage des lignes de guidage dans le module
  Rotation et Perspective

- Correction de la non persitence du niveau de zoom dans la vue sélection lorsque l'on passe
  d'une image à l'autre

- Correction des plantages liés au masque de détails lorsque la mémoire du GPU
  ou du système est faible..

- Correction de l'affichage incorrect d'un premier instantané
  après la création d'un deuxième instantané.

- Conserver les styles sélectionnés dans la boîte de dialogue des styles après les avoir modifiés.

- Correction de la sélection de la collection pour : la sensibilité ISO, l'ouverture ou le ratio d'aspect
  pour fonctionner dans toutes les langues (indépendamment de tout séparateur décimal spécifique à la langue).

- Correction du module Aberrations chromatiques RAW, qui pouvait se bloquer en raison d'un problème d'arrondi
  lors du calcul de la taille de la mémoire tampon interne. Cela pouvait provoquer un débordement
  de la mémoire tampon et éventuellement faire planter darktable..

- Avoid undershoots while interpolating in Lens Correction, Rotate and
  Perspective, Retouch and Liquify modules.

- Include LibRaw fix for artifacts when decoding high-ISO Canon CR3 files.

- Fixed possible incorrect module name when applying styles, whereby the
  module name was showing garbled text.

- Fixed possible incorrect default value initialized in Lens Correction legacy
  parameter migration from version 2.

- Fixed garbled output and possible OpenCL errors for very dark regions
  in Color Balance RGB.

- Fixed OpenCL startup for various cards.

- Fixed issue where the right-click-and-drag rotation line was not being
  displayed on the image when a darkroom module was expanded.

- Fixed lighttable scrolling freeze when using a track-pad.

- Fix compatibility issues with HDR created DNG files.

- Fix possible crash when using the capture's live view mode.

- Fixed a zooming bug in lighttable culling mode where some images' area
  could be plain grey or having a very small thumb.

- Fixed some missing pipe recomputing making processing modules' graph
  (Tone Equalizer for example) not properly updated.

- Fixed several mouse scroll-wheel issues on macOS when used in
  combination with the <kbd>Shift</kbd> modifier key (color harmonies
  width, module height, geotagging date/time, ...).

## Lua

### API Version

- API version is now 9.2.0

### Bug Fixes

- Fixed `scripts_installer` to handle user names with spaces on Windows.

### Add action support for Lua


### Other Lua changes

- n/a

## Notes

- When exporting to AVIF, EXR, JPEG XL, or XCF, selecting specific
  metadata (e.g. geo-tag or creator) is not currently possible. For
  AVIF, EXR, JPEG XL, and XCF formats, darktable will not include any
  metadata fields unless the user selects all of the checkboxes in the
  export module's preference options.

- In order to support the correct display of numbers in darktable, the
  minimum supported Gtk version has had to be increased to
  3.24.15. For people who need to build darktable with an older
  version, this can be achieved by removing line 241 of the
  `darktable.css` file on your system. See
  https://github.com/darktable-org/darktable/issues/13166.

- Starting with release 4.4 a new support policy regarding macOS
  versions has been put in place – darktable releases will now only
  support those macOS versions that are also supported by Apple.
  Release 4.6 therefore drops support for macOS versions older than
  12.5.

## Changed Dependencies

### Mandatory

- n/a

### Optional

- Bump libavif to 0.9.3

## RawSpeed changes


## Camera support, compared to 4.4

### Base Support

- Canon EOS Kiss F
- Canon EOS Kiss X50
- Canon EOS Kiss X90
- Canon IXY 220F (dng, chdk)
- Canon PowerShot SX220 HS (chdk)
- Fujifilm FinePix SL1000
- Fujifilm GFX100 II (compressed)
- Fujifilm X-S20 (compressed)
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV-50c
- Hasselblad CFV II 50C
- Hasselblad CFV II 50C
- Hasselblad CFV 100C
- Hasselblad CFV 100C
- ImBack ImB35mm (chdk)
- Leica M (Typ 262) (dng)
- Leica M-D (Typ 262) (dng)
- Leica M10-D (dng)
- Leica M10-P (dng)
- Leica M10-R (dng)
- Leica M11-P (dng)
- Leica Q2 Monochrom (dng)
- Leica S (Typ 007) (dng)
- Leica S2 (dng)
- Leica S3 (dng)
- Leica SL2 (dng)
- Leica SL2-S (dng)
- Leica T (Typ 701) (dng)
- Leica TL (dng)
- Leica TL2 (dng)
- Leica V-Lux 4 (4:3, 3:2, 1:1, 16:9)
- Leica V-Lux 5 (3:2)
- Leica X (Typ 113) (dng)
- Leica X Vario (Typ 107) (dng)
- Leica X-U (Typ 113) (dng)
- Leica X1 (dng)
- Nikon Coolpix A1000 (12bit-uncompressed)
- Nikon Z f (14bit-compressed)
- OM System TG-7
- Panasonic DC-TZ200D (3:2)
- Panasonic DC-TZ202D (3:2)
- Panasonic DC-TZ220 (3:2)
- Panasonic DC-TZ220D (3:2)
- Panasonic DC-ZS200D (3:2)
- Panasonic DC-ZS220 (3:2)
- Panasonic DC-ZS220D (3:2)
- Panasonic DMC-G10 (3:2, 16:9, 1:1)
- Panasonic DMC-GM1S (4:3, 3:2, 16:9, 1:1)
- Pentax K-3 Mark III Monochrome
- Pentax KF
- Pentax Q-S1 (dng)
- Pentax Q10 (dng)
- Samsung EK-GN120
- Samsung G920F (dng)
- Samsung G935F (dng)
- Samsung GX10 (dng)
- Samsung GX20 (dng)
- Samsung NX3300
- Sigma fp (dng)
- Sigma fp L (dng)
- Sigma sd Quattro (dng)
- Sigma sd Quattro H (dng)
- Sinar eVolution 75
- Sony ILCE-6700
- Sony ILCE-7CM2
- Sony ILCE-7CR
- Sony ILME-FX3
- Sony ZV-E1

### White Balance Presets

- Leica M (Typ 240)
- Olympus E-P7
- Olympus TG-6
- Phase One IQ180
- Sony ILCE-7CM2

### Noise Profiles

- Canon IXY 220F
- Nikon Z 8
- Nikon Z f
- Olympus E-P7
- Pentax *ist DS
- Sony ILCE-6700
- Sony ILCE-7CM2

### Missing Compression Mode Support

- Adobe enhanced DNGs (JPEG XL flavor)
- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Samsung Expert RAW DNGs (JPEG XL flavor)
- Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### Suspended Support

Support for the following cameras is suspended because no samples
are available on raw.pixls.us:

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
- Phase One IQ250
- Sinar Hy6/ Sinarback eXact
- ST Micro STV680

## Translations

- Add support for Dutch online help which is now fully complete.

- Albanian
- Brazilian Portuguese
- Chinese (Simplified)
- Chinese (Traditional)
- Czech
- Dutch
- European Spanish
- Finnish
- French
- German
- Hungarian
- Italian
- Japanese
- Polish
- Russian
- Slovenian
- Turkish
- Ukrainian

