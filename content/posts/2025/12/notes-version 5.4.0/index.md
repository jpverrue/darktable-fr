---
title: "Version 5.4.0"
aliases:
  - "darktable-5-4-0"
date: "2025-12-21"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-5.4.0.png"
---

La version 5.4.0 de darktable est sortie ce dimanche.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

Les binaires pour macOS, windows et appimage, sont disponibles en bas
de [cette page Github](https://github.com/darktable-org/darktable/releases/tag/release-5.4.0)
Ils seront également disponibles sur la page [install du site dartable.org](https://www.darktable.org/install/) dans quelques jours.
Les versions compilées spécifiquement pour les différentes distributions Linux seront disponibles
selon la diligence de leurs packageurs. En attendant, vous pouvez utiliser en toute sécurité,
la version [appimage](https://github.com/darktable-org/darktable/releases/download/release-5.4.0/Darktable-5.4.0-x86_64.AppImage).

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 5.4.0 !

La version github est disponible ici :
[https://github.com/darktable-org/darktable/releases/tag/release-5.4.0](https://github.com/darktable-org/darktable/releases/tag/release-5.4.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Si vous ne construisez que pour vous-même
sans créer de paquetage pour une distribution quelconque, le clonage du code source
dans git est un moyen encore plus pratique.

Les sommes de contrôle sont :

```
$ sha256sum darktable-5.2.0.tar.xz
53a46cd46ef7118485c4abf4ab407c181639bb8634243ec0ed1f7c1e8299bec6  darktable-5.2.0.tar.xz

$ sha256sum darktable-5.2.0-x86_64.dmg
bdffebcf758cd1ec6d4ee26eb031d52b1d7e4fe8fe000e728edb14bec91f3a35  darktable-5.2.0-x86_64.dmg

$ sha256sum darktable-5.2.0-arm64.dmg
8dabf58b6d76c04800be8ab540d3c2f1e772123279e22629a7396fe3e26273de  darktable-5.2.0-arm64.dmg

$ sha256sum darktable-5.2.0-arm64-13.5.dmg
8b35cff9d926bc4ae08ea88a09a2a45082756548c9f641afad0d785371dcf384  darktable-5.2.0-arm64-13.5.dmg

$ sha256sum darktable-5.2.0-win64.exe
4c1499e9d137efcd87e8b70fb6a0374f7139f1d0f0c49baeac9923ef7df7bdaa  darktable-5.2.0-win64.exe

$ sha256sum Darktable-5.2.0-x86_64.AppImage
294eff1d74d322cc5459221361ac7bdcdf0dc41529a02c165d0861e085978d58  Darktable-5.2.0-x86_64.AppImage
```

Lors de la mise à jour à partir de la série stable 5.2.x, gardez à l'esprit que
vos modifications seront préservées pendant ce processus, mais que la nouvelle
bibliothèque et la configuration ne seront plus utilisables avec la version 5.2.0


Il est fortement conseillé d'effectuer d'abord une sauvegarde.


#### Note importante :
Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil
photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri).
Vous y apprendrez comment contribuer à la constitution de l’ensemble complet d’échantillons
d’images (sous licence CC0) pour votre boîtier.

Depuis darktable 5.2:

- ???? _commits_ vers darktable+rawspeed
-  ??? _pull requests_ traitées
-   ?? _issues_ fermées
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 5.4
et que toutes les contributions sont très appréciées. Veuillez consulter la
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable 5.4.
Veuillez consulter le manuel d'utilisation pour plus de détails sur chaque
modification (lorsqu'elles sont disponibles).

- Une nouvelle section intitulée **Netteté de capture** a été ajoutée au module
  de dématriçage. La netteté de capture tente de récupérer les détails perdus
  en raison du flou intégré à l'appareil photo, qui peut être causé par la
  diffraction, le filtre anticrénelage ou d'autres sources de flou de type gaussien.

- Ajout d'un nouveau module de mappage de tons **AgX** basé sur la transformation
  d'affichage AgX de Blender. La sortie couleur du nouveau module est similaire à
  celle de **Sigmoid**, mais l'ensemble de commandes fourni est plus complet. Il
  permet de régler explicitement les points blancs et noirs d'exposition, comme dans
  **Filmique RVB**. L'implémentation comprend un point pivot réglable par l'utilisateur
  pour la courbe de tons, avec une valeur par défaut fixée à 18 % de gris moyen. Le
  contraste autour de ce pivot est réglable. Des commandes sont fournies pour créer une
  section de contraste constant, et des curseurs indépendants sont disponibles pour
  contrôler le contraste dans les ombres et les hautes lumières (la « base » et le
  « sommet » de la courbe). Le résultat se caractérise par une désaturation progressive
  des couleurs dans les hautes lumières, similaire à celle d'un film, et une représentation
  naturelle des couleurs dans les tons moyens et les hautes lumières.

- Ajout de la prise en charge de plusieurs espaces de travail. Lorsque l'option
  correspondante est activée dans les préférences, Darktable ouvre une boîte de
  dialogue au démarrage. À partir de cette boîte de dialogue, vous pouvez sélectionner
  l'espace de travail par défaut (celui créé la première fois et actuellement utilisé
  par défaut par tout le monde) ou en créer un nouveau. Chaque espace de travail dispose
  de sa propre base de données et de son propre fichier de configuration (collection,
  derniers paramètres par défaut de l'interface utilisateur, etc.).

  Un espace de travail en mémoire peut également être sélectionné dans la boîte de
  dialogue. Dans ce cas, aucune base de données n'est créée sur le disque, mais un
  fichier de configuration est créé.

## Améliorations de l'interface utilisateur (UI/UX)

- Many GNU/Linux distributions have dropped support for X11 leaving
  only Wayland. Darktable has received many fixes to work properly on
  Wayland including display ICC profiles. This version 5.4 should work
  on Wayland as good as it was on X11.

- Show a busy cursor when changing views. This provides immediate
  feedback when, for example, double-clicking an image in the
  lighttable instead of simply freezing the UI until the darkroom has
  finished opening.

- Added the standard "Window" menu to the application menu bar on
  macOS.

- In Tone Equalizer module move controls for mask exposure and
  contrast compensation to the advanced tab.

- In the navigation windows, the zoom is now better behaving. After a
  free zoom over the darkroom, using the scroll over the zoom level
  indicator of the navigation window, the selected zoom will be the
  closest match (above or below depending on the scroll
  direction). This is better as previous behavior where the zoom level
  was always set to "small".

- When moving around in a (zoomed) center view in the darkroom, we now
  pre-calculate a slightly larger area so that it might not always be
  necessary to immediately recalculate after further moves. The
  initial 1px mouse move is generally not final, after all. This does
  mean longer calculation times, so you can switch this off by setting
  darkroom/ui/anticipate_move in darktablerc to 1.0. If you use cursor
  keys to move around, you might want to increase it to >1.4 to
  anticipate at least one further 20% move on either side. When the
  recalculation is triggered by a module parameter change, say
  exposure increase, only the exact area shown is calculated as
  before, for optimal responsiveness.

- The popup (that you get when right-clicking) for sliders with a 360°
  range now shows a color wheel or compass. If the slider is
  soft-limited to a smaller range (for example in rotate&perspective)
  you can toggle zooming out to the full range by
  middle-clicking. Another middle click will restore the soft range
  (and the normal fine-tuning mechanism).

- When the slider range has been zoomed out beyond soft limits, the
  now visible "extreme" areas have a slightly different color.

- To make the rotation in the wheel match the rotation effect in the
  image, most slider directions for angles have been reversed. You may
  want to add a "-1" speed to any shortcuts you have gotten used to.

- Added new default shortcut keys. These will take effect only if the
  keys do not yet have user-defined assignments.

  - <kbd>c</kbd> - toggle crop box.

  - <kbd>e</kbd> - set exposure compensation (equivalent to
    right-clicking on the exposure slider).

  - <kbd>alt-r</kbd> - set image rotation (equivalent to
    right-clicking on the rotation slider).

  - <kbd>alt-[ and alt- ]</kbd> - fine rotation adjustment.

- Different shapes for the indicator on sliders can now be selected in
  preferences/misc/interface (triangle, circle, diamond, bar).

- All toolbar buttons on the lighttable and darkroom have their
  enabled state recovered across sessions. The visibility of the
  enabled buttons has been improved to avoid confusions when
  restarting Darktable and seeing artifacts due to some tools being
  activate like Gamut check.

- Make the cursor indicating the selected thumbs more visible. It is
  now bigger and has a border to ensure better visibility on dark
  thumbs.

## Performance Improvements

- Tune performance for the Lut3D module (5% to 20% speed-up).

- Dramatically speed up first startup of a new installation when the
  library is stored on a hard drive or NAS rather than SSD.

## Other Changes

- Allow using <kbd>Shift</kbd> modifier to select only the feather
  points on blend masks. This is sometime needed when the path point
  and the feather point are too close to each others.

- Hierarchical presets are now supported for utility modules as well
  as processing modules.

- Dual demosaicing now works also in tiling mode for possibly better
  OpenCL performance and smaller CPU memory pressure.

- Added automatic compensation of camera's hidden underexposure for
  Canon Lighting Optimizer mode, Nikon Active D-Lighting and HLG tone
  modes, Olympus Gradation mode, Pentax Dynamic Range Expansion mode,
  and Fujifilm DR200/DR400 modes. This affects both the "exposure" and
  "denoise (profiled)" modules.

- Add a RGB percent display in the color picker module.

- Allow far smaller crop area to be created (crop up to 99% of the
  image size).

- Allow the variable $(ROLL.NAME) to have optional levels,
  $(ROLL.NAME[n]), where 1 <= n <= 5, the levels follow the same
  rules as film roll, the default value `n=1`, this keep the previous
  behavior of $(ROLL.NAME).

- Added optional collection of shortcut assignments using
  keyboard+mouse combinations to control image processing
  modules. Install these by clicking on the new "import extras" button
  on the Shortcuts tab under Preferences.

- Remove the "overwrite" option from the lighttable history stack
  module. This option is used when pasting history to delete the
  current history stack before pasting the new one. It is rarely used
  and was confusing people when working copying/pasting on darkroom
  from the filmstrip as this option was only visible on
  lighttable. The option has been moved into the paste parts dialog.

- Added manual chroma subsampling control for AVIF export. Users can now
  choose between auto, 4:4:4, 4:2:2, and 4:2:0 chroma subsampling modes
  independently of the quality setting, allowing better optimization of the
  quality-vs-size tradeoff for AVIF files.

- The processing modules/<focused> shortcuts also work if the quick
  access panel is "focused", addressing the first 20 sliders or
  dropdowns.

- If only the first rotor on a midi controller is assigned, the higher
  numbered ones automatically address increasing elements of the same
  action or subsequent actions. This allows quick (re) assignment to
  the <focused> action or to the mimics set up with for example the
  x-touch Lua script.

- Added the ability to calculate crop factor for Olympus cameras.

- When creating styles with multiple images selected, clicking Cancel
  button or typing <kbd>ESC</kbd> on the style dialog now ends the
  whole process instead of continuing with the next image.

## Bug Fixes

- Fixed some issues with the hierarchical styles handling in the
  styles module.

- Fixed moving additional extra audio or text sidecar files when
  an image is moved.

- Fixed module based collection restoring. After quitting darktable with a
  module based collection, the lighttable was empty after restarting it.

- Fixed some reset issues of the export module. The format and storage
  sections were not reset properly.

- Fixed corruption of sidecars during large imports of images with XMP
  sidecars.

- Fixed a bug where changing the image scaling in the export module
  influences the result of a running export job.

- Make sure we always fill the complete main darkroom canvas while
  zooming at large scales.

- Make sure image changed_timestamp is updated when a sidecar file
  is applied.

- Fixed drag and drop of images on the map gives wrong location
  assignment on macOS.

- Fixed auto applied presets for sraws and true monochromes.

- Fixed a bug in details threshold mask for monochrome raw files
  leading to crashes.

- Fixed an issue when positioning the main darkroom windows due to
  precision in computation. The precision is now to the pixel and
  avoid a displacement in some cases.

- Fixed issue in darktable-cli that prevented input files from being
  detected.

- Fixed out of memory issue which could kill Darktable on small
  systems when processing large images.

- Fixed toast message translation displayed when scrolling over the
  module's preset buttons.

- Fixed issue in darktable-cli that prevented input files from being
  detected.

- Fixed an issue with reading TIFF files that (incorrectly) contain
  metadata specific to the raw files they were made from.

- Fixed an issue where imported styles that didn't have a name could
  cause darktable to crash when starting.

- Fixed a bug leading to wrong colors in main darkroom window (mostly
  after using a module picker) due to bad color coeffs in colorin
  module.

- Fix support for Wayland. The UI is now working as expected and
  Darktable will handle ICC profile from colord.

- Fixed processing module naming based on the presets when the used
  preset is renamed or deleted.

- Fixed a bug in darktable-cli where exporting a duplicate version of
  an image would use the tags attached to the base version instead of
  the tags attached to it.

- Fixed a bug in darktable-cli where synonyms for tags attached to an
  image were ignored when exporting it.

- Fixed auto-applied user's presets when <kbd>Ctrl+click</kbd> on a
  processing module after restarting Dartkable.

- Fixed a bug where adding an image to a group in lighttable could
  merge multiple group together.

- Fixed a print issue which is probably happening only on macOS. When
  printing in landscape mode, the rotation of the picture is not done
  on the printer. So only a part of the image is printed at the bottom
  of the page. This issue is not fully understood at this stage and
  has only been reported twice. If you encounter this issue then you
  can set the following variable in your darktablerc to force the
  landscape CUPS option to be generated:

     plugins/print/cups/force_landscape=TRUE

- Fixed possible display of double thumbs cursor on filmstrip when in
  darkroom. Also the thumbs background could look as selected on
  multiple pictures.

- Fixed darkroom processing after changing any of the colour profiles.

- For module toggle shortcuts (like enable, show and focus) the "on" and
  "off" effects are now respected (they dont simply always toggle
  anymore, like they did before).

- Fix too strict restriction for filename length in watermark module.

## Lua

### API Version

- API version is now 9.6.0

### New Features

- Added darktable.query_event() to check if an event is registered.

- Added collection-changed event that fires when the collection changes.

- Added darktable.configuration.share_dir and darktable.configuration.data_dir
  to expose the darktable data and share directories.

### Bug Fixes

- Check added to ensure view has changed before processing GUI events
  preventing hang on start.

- return a nil value instead of throwing a Lua error if the indexed element of
  the following Lua tables does not exist or if the table is empty:

  - `dt_lua_tag_t.#`

  - `dt_lua_film_t.#`

  - `dt_style_t.#`

  - `darktable.films.#`

  - `darktable.styles.#`

  - `darktable.database.#`

  - `darktable.collection.#`

- Ensure `darktable.database.get_image()` returns a nil, in all conditions,
  for an image that doesn't exist.

- Ensure translations are displayed in UTF-8 under Windows


### Add action support for Lua

### Other Lua changes

- N/A

## Notes

- When exporting to AVIF, EXR, JPEG XL, or XCF, selecting specific
  metadata (e.g. geo-tag or creator) is not currently possible. For
  AVIF, EXR, JPEG XL, and XCF formats, darktable will not include any
  metadata fields unless the user selects all of the checkboxes in the
  export module's preference options.

- Starting with release 5.4, Intel Macs and macOS versions older than 14.0
  are no longer supported.

## Changed Dependencies

### Mandatory

- N/A

### Optional

- N/A

## RawSpeed changes

- Canon EOS 2000D/1500D/Rebel T7/Kiss X90 color matrix was updated.
- Nikon Z 7 color matrix was updated.
- Nikon Z5_2 color matrix was updated.
- Sony ILCE-1M2 color matrix was updated.

## Camera support, compared to 5.2

### Base Support

- Canon EOS R1 (requires LibRaw 0.22-PreRC1 and later)
- Canon EOS R5 Mark II (requires LibRaw 0.22-PreRC1 and later)
- ???

### White Balance Presets

- ???

### Noise Profiles

- ???

### Missing Compression Mode Support

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Phase One other than IIQ L
- Sony HQ and downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### Suspended Support

Support for the following cameras is suspended because no samples are available on https://raw.pixls.us:

- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm IS-1
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Olympus SP320
- Phase One IQ250
- ST Micro STV680

## Translations

- ???
