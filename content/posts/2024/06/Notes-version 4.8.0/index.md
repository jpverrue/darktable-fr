---
title: "Version 4.8.0"
aliases:
  - "darktable-4-8-0"
date: "2024-06-21"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-4.8.0.png"
---

La version 4.8.0 de darktable est sortie vendredi dernier.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.8.0 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.8.0](https://github.com/darktable-org/darktable/releases/tag/release-4.8.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```
$ sha256sum darktable-4.8.0.tar.xz
??? darktable-4.8.0.tar.xz
$ sha256sum darktable-4.8.0-x86_64.dmg
??? darktable-4.8.0-x86_64.dmg
$ sha256sum darktable-4.8.0-arm64.dmg
??? darktable-4.8.0-arm64.dmg
$ sha256sum darktable-4.8.0-win64.exe
??? darktable-4.8.0-win64.exe
```

Lors de la mise à jour à partir de la série stable 4.6.x, gardez à l'esprit que
vos modifications seront préservées pendant ce processus, mais que la nouvelle
bibliothèque et la configuration ne seront plus utilisables avec la version 4.6.x.

#### Note importante : Pour s’assurer que darktable supporte le format de fichier
RAW de votre appareil photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri).
Vous y apprendrez comment contribuer à la constitution de l’ensemble d’échantillons
d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.6 :

- 1484 commits à darktable + rawspeed  
- 513 demandes de pull traitées  
- 60 problèmes fermés

_Veuillez noter que la documentation de darktable n'est pas encore complète
pour la version 4.8 et que les contributions sont très appréciées.
Veuillez consulter la [documentation du projet] (https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._


## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable 4.8.
Veuillez consulter le manuel de l'utilisateur pour plus de détails
sur les changements individuels (le cas échéant).

- Introduction du module Égaliseur des couleurs pour contrôler la teinte,
  la luminosité et la saturation en fonction des couleurs. Il offre une
  version relative à la scène (partielle), pour remplacer le module Zones
  de couleur d'origine.

- Deux nouveaux modules ont été introduits pour faciliter la composition
  des images.

  - Agrandir le canevas : Comme son nom l'indique, ce module permet
    d'ajouter des zones à gauche, à droite, en haut ou en bas de l'image.
    Une couleur différente peut être attribuée à la nouvelle zone pour
    faciliter le masquage si nécessaire. Les nouvelles zones peuvent
    ensuite être remplies avec le module Retouche en copiant une autre
    partie de l'image, avec Liquéfier si la zone est petite
    ou avec le nouveau module composite.

  - Composite : Ce module permet d'ajouter un nouveau contenu à l'image
    en superposant des pixels de l'image actuelle ou d'une autre image.
    Le contenu de la superposition est défini par un glisser-déposer d'une
    image à partir du bandeau, vers le module Composite. Ce nouveau
    contenu peut être mis à l'échelle, tourné et déplacé horizontalement ou
    verticalement. À l'aide d'un masque, il peut être utilisé pour remplir
    une zone créée par le module Agrandir le canevas ou pour ajouter une
    nouvelle partie à l'image à l'aide d'un masque. Un exemple courant
    consiste à superposer plusieurs images d'un feu d'artifice pour
    en créer un plus grand.

- Création d'un bouton en chambre noire afin de forcer le traitement dans
  le pixel-pipe à utiliser l'ensemble des données de l'image au lieu de la
  seule zone affichée. Cela permet d'inspecter les données traitées sans
  les erreurs introduites par la mise à l'échelle interne et équivaut à
  ce que l'on obtient en cochant Échantillonnage de haute qualité lors
  de l'exportation.

## Amélioration des performances

- Rewrote the clustering code in map view for dramatically faster
  performance on large collections (mapping should now be usable with
  more than one million geotagged images selected).

## Other Changes

- Changed the sort order of tags to a natural and case insensitive order.

- Added Apple Keychain password storage backend for macOS devices.

- Collect module sorting has been integrated into the module's header
  instead of a preference. All collections can now be sorted easily by
  a single click on the sort button.

- Removed "unrestricted" mode from darktable preferences resources
  for safety. This setting has been proved to be unsafe in many
  cases. It can still be enabled via the resource file if needed.

- Added buttons next to the snapshots to allow restoring it as the new
  history. Also the snapshots are now supporting drawn masks. It is
  possible to visualize the difference between the main darkroom view
  and a snapshot with different masking for example.

- Using <kbd>Right-Click</kbd> on color label icons (bottom toolbar of
  lighttable) it is possible to add a description to color
  labels. This is a handy way of remembering the color label usage in
  the workflow.

- Removed the AI options in color calibration module because of
  mediocre quality.

- It is now possible to import images in-place in a GVfs mount on
  GNU/Linux.

- Added a dashed outline of the currently selected area in the print view.

- Added a few more EXIF fields to the image information module: white
  balance, exposure program, flash and metering mode.  These get
  filled automatically for new imports. For existing photos please
  perform a "refresh EXIF" on the selected images.

- Added Windows credential manager password storage backend.

- Added mask blending to the highlights reconstruction module.
  The generated raster mask holds the amount of reconstructed data and
  can be used with all algorithms.

- Color picker positions are defined by image coordinates instead of output.
  They will stay at the same location whatever distorting modules are used.

- The history autosaving might be disabled because of slow drives, this is
  now done per image instead of globally.

- Added support for DNG files requiring the CameraCalibration tags for
  correct white balancing (for example, some Google Pixel cameras).
  Requires re-reading EXIF metadata.

- Improved efficiency of the quick access panel by allowing modules to
  be reset and presets to be applied without opening the full module.
  Added more controls by default to further reduce the need to leave
  the panel while editing.

- Added more collection types and filters for flash, white balance,
  exposure program, metering mode and image grouping.

  Removed the old image grouping collection type and filter which gave
  confusing results.

- Added support for CMYK profiled histogram.

- The map view can now be scrolled with the arrow keys
  (left/right/up/down) in small steps and in combination with
  <kbd>Ctrl</kbd> in bigger steps.

## Bug Fixes

- Fixed copying of multiple instances to ensure the proper order is applied
  when pasting to a new image.

- Fixed raw chromatic aberration on Clang based systems.

- Fixed backthumb crawler for deleted history. We make sure that the
  crawler is aware of a deleted history and so will regenerate the
  thumbs as expected.

- Fixed drawn masks visualizing in darkroom after pixelpipe module have
  changed. The drawn masks will now be properly adjusted if there is
  new distortion on the pipe for example. This was not the case until
  one was editing the mask.

- Fixed memleak while importing AVIF images.

- Fixed mask blending for sRAW images while in IOP_CS_RAW colorspace.

- Fixed OpenCL device locking for modules calling dt_dev_pixelpipe_process().

- Fixed the UI becoming unresponsive due to very large history.

- Fixed UCS colorspace maths avoiding div-by-zero and out-of-gamut errors.

- Fixed a number of issues with guided filter blending and internal mask
  distortions.

- Fixed some issues related to cropping module and output/export
  dimensions.

- Fixed export processing when high quality is disabled and upscale is
  set.

- Fixed camera mounting when GPhoto2 internally reports a single
  attached camera multiple times.

- Fixed the issue preventing export to recent Piwigo version.

- Fixed many stability issues for better overall robustness.

## Lua

### API Version

- API version is now 9.3.0

### Bug Fixes

### Add action support for Lua

### Other Lua changes

- Upgraded internal Lua to 5.4.6

- Added duplicate_image_with_history function to darktable.database

- button widget - added halign member to horizontally position the label

- button widget - added image member to use an image as the button label

- button widget - added image_align to horizontally position the image

- box widget - added expand member to control cells being expanded to fill the with of the box

- box widget - added fill member to control if the widgets fill the cell

- box widget - added padding member to control padding size of the cells

- added active_preset member to darktable.gui.libs to get the lib's active preset name

## Notes

- When exporting to AVIF, EXR, JPEG XL, or XCF, selecting specific
  metadata (e.g. geo-tag or creator) is not currently possible. For
  AVIF, EXR, JPEG XL, and XCF formats, darktable will not include any
  metadata fields unless the user selects all of the checkboxes in the
  export module's preference options.

- Release 4.8 drops support for macOS versions older than 13.5.

## Changed Dependencies

### Mandatory

- Minimum libpng version 1.5.x is now required
- Bump Exiv2 requirement to 0.27.2
- Minimum pugixml version 1.5 is now required
- Minimum libcurl version 7.56 is now required

### Optional

- n/a

## RawSpeed changes

- Fujifilm X-Trans 4 based and newer cameras now use the vendor supplied crop

## Camera support, compared to 4.6

### Base Support

- Canon EOS R100 (requires LibRaw 202403 and later)
- Canon EOS R50 (requires LibRaw 202403 and later)
- Canon EOS R6 Mark II (requires LibRaw 202403 and later)
- Canon EOS R8 (requires LibRaw 202403 and later)
- Canon EOS Ra (requires LibRaw 202403 and later)
- Fujifilm FinePix S9600fd
- Fujifilm X100VI (compressed)
- GoPro FUSION (DNG)
- Leica SL3 (DNG)
- OM System OM-1 Mark II
- Panasonic DC-TZ95D (4:3)
- Panasonic DMC-FX150 (4:3, 3:2, 16:9)
- Panasonic DMC-FZ28 (3:2)
- Phase One P25+
- Phase One P45+
- Ricoh GR III HDF (DNG)
- Ricoh GR IIIx HDF (DNG)
- Sony ILCE-9M3
- Sony UMC-R10C

### White Balance Presets

- Canon EOS R6 Mark II (requires LibRaw 202403 and later)
- Fujifilm X-H2
- OM System OM-1 Mark II
- OM System OM-5

### Noise Profiles

- Canon EOS R6 Mark II (requires LibRaw 202403 and later)
- Fujifilm GFX 50R
- OM System OM-1 Mark II
- OM System OM-5
- Phase One IQ180
- Sony ILCE-9M3
- Sony ZV-1

### Missing Compression Mode Support

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- OM System 14-bit high resolution ORFs
- Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### Suspended Support

Support for the following cameras is suspended because no samples are available on https://raw.pixls.us:

- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm IS-1
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Minolta DiMAGE 5
- Olympus SP320
- Phase One IQ250
- Sinar Hy6/ Sinarback eXact
- ST Micro STV680

## Translations

- Czech
- German
- European Spanish
- Finnish
- French
- Hungarian
- Italian
- Japanese
- Dutch
- Polish
- Brazilian Portuguese
- Russian
- Slovenian
- Albanian
- Ukrainian
- Chinese (Simplified)
- Chinese (Traditional)
