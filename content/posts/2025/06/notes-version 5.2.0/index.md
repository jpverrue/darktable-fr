---
title: "Version 5.2.0"
aliases:
  - "darktable-5-2-0"
date: "2025-06-21"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-5.2.0.png"
---

La version 5.2.0 de darktable est sortie ce samedi.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

Les binaires pour macOS, windows et appimage, sont disponibles en bas
de [cette page Github](https://github.com/darktable-org/darktable/releases/tag/release-5.2.0)
Ils seront également disponibles sur la page [install du site dartable.org](https://www.darktable.org/install/) dans quelques jours.
Les versions compilées spécifiquement pour les différentes distributions Linux seront disponibles
selon la diligence de leurs packageurs. En attendant, vous pouvez utiliser en toute sécurité,
la version [appimage](https://github.com/darktable-org/darktable/releases/download/release-5.2.0/Darktable-5.2.0-x86_64.AppImage).

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 5.2.0 !

La version github est disponible ici :
[https://github.com/darktable-org/darktable/releases/tag/release-5.2.0](https://github.com/darktable-org/darktable/releases/tag/release-5.2.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Si vous ne construisez que pour vous-même
sans créer de paquetage pour une distribution quelconque, le clonage du code source
dans git est un moyen encore plus pratique.

Les sommes de contrôle sont :

```
$ sha256sum darktable-5.2.0.tar.xz
??? darktable-5.2.0.tar.xz

$ sha256sum darktable-5.2.0-x86_64.dmg
??? darktable-5.2.0-x86_64.dmg

$ sha256sum darktable-5.2.0-arm64.dmg
??? darktable-5.2.0-arm64.dmg

$ sha256sum darktable-5.2.0-arm64-13.5.dmg
??? darktable-5.2.0-arm64-13.5.dmg

$ sha256sum darktable-5.2.0-win64.exe
??? darktable-5.2.0-win64.exe

$ sha256sum darktable-4.8.1-x86_64.AppImage
???  darktable-5.2.0-x86_64.AppImage
```

Lors de la mise à jour à partir de la série stable 4.8.x, gardez à l'esprit que
vos modifications seront préservées pendant ce processus, mais que la nouvelle
bibliothèque et la configuration ne seront plus utilisables avec la version 5.0.


Il est fortement conseillé d'effectuer d'abord une sauvegarde.


#### Note importante :
Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil
photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri).
Vous y apprendrez comment contribuer à la constitution de l’ensemble complet d’échantillons
d’images (sous licence CC0) pour votre boîtier.

Depuis darktable 5.0:

- 1099 _commits_ vers darktable+rawspeed
-  386 _pull requests_ traitées
-   49 _issues_ fermées
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 5.2
et que toutes les contributions sont très appréciées. Veuillez consulter la
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable
5.2. Veuillez consulter le manuel de l'utilisateur pour plus de détails
sur les changements individuels (le cas échéant).

- Vous pouvez maintenant visualiser les instantanés côte à côte avec l'image
  actuelle, au lieu d'une superposition partielle. Sélectionnez l'instantané
  à afficher, puis cliquez sur le bouton situé à côté de **Prendre un
  instantané**. La fenêtre centrale est divisée en deux panneaux égaux. Elle
  peut être zoomée et panotée (en la faisant glisser tout en maintenant
  la touche <kbd>a</kbd> enfoncée) comme auparavant. La ligne de séparation ne peut
  plus être déplacée mais tout clic sans <kbd>a</kbd> fait pivoter la disposition.

- Le module **Informations de l'image** est désormais entièrement configurable
  et permet d'ajouter et conserver toutes les balises supportées par exiv2.
  
- Ajout d'un nouveau module **Masque raster externe**. Après avoir configuré
  un dossier racine contenant les fichiers PFM dans les préférences, vous pouvez
  sélectionner un fichier à utiliser comme masque raster, qui sera mis à
  l'échelle pour s'adapter à la taille de l'image. Vous pouvez également
  définir la combinaison des canaux RVB de ce fichier PFM qui sera utilisée
  pour le masque raster.

- Le module **Sigmoide** est désormais le mappeur de tonalités sélectionné par
  défaut lors des nouvelles installations.

- Le module **Exporter** dispose désormais d'une nouvelle section
  **Exportation multi-préréglages** qui permet d'exporter les images
  sélectionnées avec plusieurs préréglages en une seule opération.

## Améliorations de l'interface utilisateur (UI/UX)

- Sur la **Table lumineuse**, remplacement du widget réglette de zoom,
  qui contrôle le nombre de vignettes affichées dans le tableau des vignettes,
  par un widget +/-. Cela facilite le réglage de la valeur exacte.

- Dans l'onglet **4 voies** du module **Balance de couleur RVB**,
  <kbd>ctrl+clic</kbd> sur les pipettes sélectionne désormais la couleur réelle,
  tandis qu'un clic normal continue de sélectionner la couleur opposée. Cela
  offre aux utilisateurs plus de flexibilité et de contrôle lors de la sélection
  des teintes.

## Améliorations des performances

- Élimination des actualisations inutiles de l'interface graphique.

- Amélioration de la réactivité de l'interface utilisateur pour les opérations
  de fusion.

## Autres changements

- Suppression des modules **Niveaux** et **Contraste / Luminosité / Saturation**
  (qui étaient obsolètes depuis 2023) du groupe des modules obsolètes.
  Ce groupe étant désormais vide, il a également été supprimé pour le moment.
  
- En raison d'un problème en amont, l'exportation au format JPEG XL en 16 bits
  flottants avec une qualité de 100 n'est actuellement pas mathématiquement
  sans perte.

- Ajout de la lecture des fichiers au format Cineon (développé par Kodak) et
  DPX (développé par SMPTE) avec les extensions .cin et .dpx.

- Dans les **Préférences**, le paramètre **Privilégier les performances plutôt
  que la qualité** a été supprimé.

- Une solution de contournement pour les anciens pilotes AMD OpenCL défectueux,
  en place depuis 12 ans, a été désactivée par défaut. Nous espérons que les
  pilotes plus récents n'en ont plus besoin, car que cela causait des problèmes
  avec la traduction de l'interface utilisateur au démarrage, provoquant
  l'affichage d'une partie de celle-ci en anglais. Si vous rencontrez des
  problèmes avec OpenCL qui pourraient être causés par cette modification,
  veuillez procéder comme suit :
  
    - Ajoutez la ligne `opencl_force_c_locale=anything` à votre fichier
      `~/.config/darktable/darktablerc`.

    - Si cela résout votre problème, veuillez signaler le problème sur GitHub,
      Pull Request #18342, en incluant des informations sur la marque de votre
      GPU et la version de vos pilotes. Nous pourrons alors, pour la prochaine
      version, soit réactiver par défaut la solution de contournement pour les
      pilotes qui en ont besoin, soit avertir les utilisateurs disposant de
      pilotes obsolètes qu'ils doivent les mettre à jour.

- Les préréglages peuvent désormais être organisés dans des sous-menus, comme
  les styles, en insérant le caractère <kbd>|</kbd> dans leur nom entre les niveaux.
  La boîte de dialogue des raccourcis ainsi que l'onglet **Préréglages** des **Préférences**
  affichent désormais ces hiérarchies repliables pour les styles et les
  préréglages (et le bug qui empêchait la traduction des raccourcis de
  style a été corrigé).

- Affichage d'un indiateur sur les tâches en arrière-plan en cours lorsque
  darktable se ferme.

- Amélioration du rendu des modules **Réduction du bruit(profil)**, **Homogénéiser
  ou postériser** et **Réduction du bruit photo astro** dans une deuxième fenêtre
  ou en mode de traitement haute qualité.
  
- Le paramètre de préférence **Réduire la résolution de l'image d'aperçu** est
  masqué. Cette fonctionnalité avait été introduite en 2020 afin d'améliorer la
  réactivité sur les systèmes lents, mais elle rendait le sélecteur de couleurs
  et la prise en charge des masques imprécis (perte de qualité).

- Amélioration de la qualité de l'algorithme de récupération des hautes lumières
  **Peinture opposés** pour les images sRAW.

- Dans le module **Suppression de la brume**, réduction visible des différences entre
  les exportations et le traitement en chambre noire HQ.
  Pour certaines images, l'algorithme ne parvient pas à calculer les paramètres
  de correction. Cela est signalé dans le journal de contrôle.

- Les informations sur l'objectif sont désormais lues à partir des fichiers image
  OM-System/Olympus pris avec des objectifs sans données électroniques, si ces
  informations sont saisies dans la boîte de dialogue des paramètres d'informations
  sur l'objectif de l'appareil photo. Le module de **Correction des objectifs** trouvera
  automatiquement l'objectif s'il est pris en charge par lensfun et si le nom saisi
  correspond au nom lensfun, qui peut être consulté dans la liste déroulante de
  sélection des objectifs.

- Les masques raster ont été améliorés en interne et prennent désormais en charge les
  mêmes outils de raffinement que tous les autres masques, notamment le **Seuil de détails**,
  le **Guide**, le **Rayon de l'adoucissement**, le **Rayon de flou** et le **Contraste**.
  Quelques améliorations ont été apportées à l'interface utilisateur des masques raster.

- Le module **Reconstruire les hautes lumières** offre un masque raster avec des informations
  sur le niveau au-dessus du niveau de l'écrétage.

- Les changements dans le module **Orientation** respectent les modifications
  apportées dans le module **Recadrer**.

- La dimension affichée lors du recadrage correspond désormais à la dimension d'exportation
  par défaut et conserve le rapport exact choisi.

- Dans le module **Historique**, les informations de formattage et de mise à l'échelle des
  info-bulles des items ont été corrigées afin qu'elles correspondent aux valeurs affichées
  dans les modules eux-mêmes.

- Ajout de la connexion automatique au module d'exportation **Piwigo**. Cette option peut
  être activée dans la section sécurité des préférences.

- Ajout du format 45 x 35 au module **Recadrer**, très utilisé pour les cartes
  d'identité et les passeports.

- Module **Évaluation des couleurs ISO12464** : modification de la largeur totale de la
  bordure pour une mise à l'échelle relative qui devrait bien fonctionner sur les petits
  et grands écrans, indépendamment de la résolution physique de l'écran. Ajout d'une
  fenêtre contextuelle pour le paramétrage et suppression.

- Amélioration de la visibilité des masques dans la chambre noire. Cette option est
  contrôlée par la nouvelle option de configuration cachée `darkroom/ui/develop_mask_mix`.
  
- Ajout d'un nouveau paramètre pour modifier les images prises en compte pour les actions :
  par défaut, l'image sous le curseur est prioritaire. Lorsque ce paramètre est activé,
  les images sélectionnées sont prioritaires et l'image sous le curseur est uniquement
  prise en compte pour alimenter le module Information de l'image.

- Ajout d'une icône de mot-clé sur les miniatures pour afficher la liste des mots-clés
  associées lorsque vous passez la souris dessus.

- Dans la vue **Carte**, il est possible de faire un panoramique sur l'ensemble du tracé de
  l'une des manières suivantes : en double-cliquant sur la liste des segments de tracé,
  en cliquant avec le bouton gauche de la souris sur l'en-tête de la liste ou à l'aide
  d'un raccourci clavier.

## Bug Fixes

- Fixed sidecar writing if quitting from darkroom.

- Fixed some rare race conditions while processing the pixelpipes.

- Fixed collection filter presets based on capture time creating an
  empty widget.

- Proper high quality demosaicing and details blending support for
  second window.

- Fixed a bug that allowed NULL pointer dereference in tethering mode
  under certain conditions, which resulted in a crash.

- Fixed darktable shutdown code so pending background jobs are properly finished
  and give a control log if there is pending work.

- Fixed a crash in the import dialog when trying to add a new place to
  an empty places list.

- Fixed bit-depth setting not saved in AVIF export presets.

- Fixed reset button not working in the geotagging module. Also a
  loaded GPX track in the geotagging module is now properly removed.

- Fixed darktable-cli crashing if the darktable database is locked.

- Fixed image not properly layout in the print module after being
  rotated from Lighttable.

- Fixed a bug where the changes in various edit fields are not saved
  correctly when the field loses the input focus.

- Fixed incorrect reporting of whether a flash was fired in expansion
  variables `$(EXIF.FLASH.ICON)` and `$(EXIF.FLASH)` under certain
  conditions.

- Fixed the edit style dialog to show all module's duplicates. Also,
  when creating a new style we don't show the whole history but only
  the last version of each module.

- Fixed a bug in xtrans demosaicers that could feed NaNs into the
  pixelpipe.

- Fixed display of image using a composite module when the modules are
  reordered.

- Many TIFF loader fixes and improvements:

    - Fixed crash on files for which libtiff would issue warnings or errors

    - Fixed crash on files with missing SAMPLESPERPIXEL tag

    - Enabled CMYK TIFF support

    - Added support for loading TIFF with missing/undefined sample format

    - Fixed reading of grayscale images with min-is-white interpretation
      (made them not inverted)

    - Fixed regression in support of many more exotic variations
      of the TIFF format, such as tiled encoding, planar layout,
      uncommon bit depths (such as 12 or 14 bits, or less than 8)

## Lua

### API Version

- API version is now 9.5.0

### New Features

- Added apply_sidecar to dt_lua_image_t so that a sidecar file can be loaded
  and applied to an image in lighttable.

### Bug Fixes

- Expanded width of preference boxes Lua Options so that long input is visible.

- N/A

### Add action support for Lua

### Other Lua changes

- N/A

## Notes

- When exporting to AVIF, EXR, JPEG XL, or XCF, selecting specific
  metadata (e.g. geo-tag or creator) is not currently possible. For
  AVIF, EXR, JPEG XL, and XCF formats, darktable will not include any
  metadata fields unless the user selects all of the checkboxes in the
  export module's preference options.

- Starting with release 4.8, macOS versions older than 13.5 are not
  supported.

## Changed Dependencies

### Mandatory

- N/A

### Optional

- n/a

## RawSpeed changes

- OM System 14-bit high-resolution ORFs are now supported.
- Canon EOS 5D Mark II crop was updated.
- Fujifilm FinePix X100 crop was updated.
- Samsung EX1 crop and white level were updated.
- Sony ILCE-1M2 color matrix was updated.

## Camera support, compared to 5.0

### Base Support

- Canon EOS R5 C (requires LibRaw 202502 and later)
- Fujifilm GFX100RF (compressed)
- Fujifilm GFX100S II (compressed)
- Nikon 1 J5
- Nikon 1 V3
- Nikon COOLPIX P1100 (12bit-uncompressed)
- Nikon Coolpix P340
- Nikon D100
- Nikon D200
- Nikon D2Hs
- Nikon D2X
- Nikon D3300
- Nikon D3X
- Nikon D40
- Nikon D40X
- Nikon D5
- Nikon D5000
- Nikon D5300
- Nikon D5500
- Nikon D5600
- Nikon D60
- Nikon D80
- Nikon D800
- Nikon D800E
- Nikon D90
- Nikon Z5_2 (14bit-compressed)
- OM System OM-3
- Olympus SP510UZ
- Panasonic DC-G97 (4:3)
- Panasonic DC-G9M2 (4:3)
- Panasonic DC-GH6 (4:3)
- Panasonic DC-S1RM2 (3:2)
- Panasonic DC-S5M2 (3:2)
- Panasonic DC-S5M2X (3:2)
- Panasonic DC-S9 (3:2)
- Panasonic DC-TZ99 (4:3)
- Panasonic DC-ZS99 (4:3)
- Phase One IQ150
- Phase One P40+
- Samsung GX20
- Sigma BF (DNG)
- Sigma DP1 (DNG)
- Sigma DP1 Merrill (DNG)
- Sinar Hy6 (DNG)
- Sony DSC-RX100M7A
- Sony ILCE-6100A
- Sony ILCE-6400A
- Sony ILME-FX3A
- Sony ZV-1A
- Sony ZV-E10M2

### White Balance Presets

- Fujifilm GFX100 II
- OM System OM-3
- Panasonic DC-S9

### Noise Profiles

- Fujifilm GFX 100
- Leica SL2
- OM System OM-3
- Panasonic DC-S1RM2
- Panasonic DC-S9
- Sony ILCE-1M2

### Missing Compression Mode Support

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Phase One other than IIQ L
- Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

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
