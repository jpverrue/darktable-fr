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

La version 4.6.1 de darktable est sortie samedi dernier.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.6.1 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.6.1](https://github.com/darktable-org/darktable/releases/tag/release-4.6.1).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

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

#### Note importante : Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri). Vous y apprendrez comment contribuer à la constitution de l’ensemble d’échantillons d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.6.0 :  

- 606 commits à darktable + rawspeed  
- 57 demandes de pull traitées  
- 12 problèmes fermés

## Les grandes nouveautés

- La documentation est maintenant complète pour darktable 4.6 Elle inclut les traductions en
  ukrainien, polonais et néerlandais.
  Voir [https://www.darktable.org/resources](https://www.darktable.org/resources)
  pour plus d'informations.

## Amélioration des performances

- Correction de certains passages du code OpenCL qui pouvaient produire une sortie altérée
  ou non traitée sans signaler le problème au pixel-pipe.

## Autres changements

- La recherche d'images dans la boîte de dialogue d'importation est désormais effectuée
  de manière asynchrone. Cela signifie qu'une longue analyse (dûe à l'utilisation du mode
  récursif dans un répertoire contenant un grand nombre de sous-répertoires et de fichiers par exemple),
  peut être interrompue en sélectionnant un autre endroit ou répertoire, ou en décochant le mode récursif.

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

- Correction de la non persistence du niveau de zoom dans la vue sélection lorsque l'on passe
  d'une image à l'autre

- Correction des plantages liés au masque de détails lorsque la mémoire du GPU
  ou du système est faible.

- Correction de l'affichage incorrect d'un premier instantané
  après la création d'un deuxième instantané.

- Conserver les styles sélectionnés dans la boîte de dialogue des styles après les avoir modifiés.

- Correction de la sélection de la collection pour : la sensibilité ISO, l'ouverture ou le ratio d'aspect
  afin de fonctionner dans toutes les langues (indépendamment de tout séparateur décimal spécifique à la langue).

- Correction du module Aberrations chromatiques RAW, qui pouvait se bloquer en raison d'un problème d'arrondi
  lors du calcul de la taille de la mémoire tampon interne. Cela pouvait provoquer un débordement
  de la mémoire tampon et éventuellement faire planter darktable.

- Éviter les sous-dépassements (undershoots) lors de l'interpolation dans les modules Correction des objectifs,
  Rotation et Perspective, Retouche ou Liquéfier.

- Inclusion de correction LibRaw pour éliminer les artefacts
  lors du décodage des fichiers Canon CR3 à hauts ISO.

- Correction de la possibilité d'un nom de module incorrect lors de l'application de styles,
  le nom du module apparaissait en texte incompréhensible.

- Correction d'une éventuelle valeur par défaut incorrecte initialisée dans la migration
  des paramètres de correction de l'objectif depuis la version 2.
  
- Correction de la sortie altérée et des erreurs OpenCL possibles pour les régions très
  sombres dans le module Balance couleurs RVB.

- Correction du démarrage d'OpenCL pour diverses cartes graphiques.

- Correction d'un problème dans lequel la ligne de rotation du 'clic droit + déplacement' ne s'affichait
  pas sur l'image lorsqu'un module de la chambre noire était agrandi.

- Correction du gel du défilement de la table lumineuse lors de l'utilisation d'un track-pad.

- Correction des problèmes de compatibilité avec les fichiers DNG créés en HDR.

- Correction d'un éventuel plantage lors de l'utilisation du mode 'live view' de la vue Capture.

- Correction d'un bug de zoom dans le mode sélection de la table lumineuse où la zone de certaines
  images pouvait être grise ou avoir une très petite vignette.

- Ajout de certains recalculs manquants dans le pixel pipe qui faisaient que le graphique des modules
  de traitement (Tone Equalizer par exemple) n'était pas correctement mis à jour.

- Correction de plusieurs problèmes liés à la molette de défilement de la souris sous macOS lorsqu'elle
  est utilisée en combinaison avec la touche modificatrice <kbd>Maj</kbd>
  (largeur des harmonies de couleurs (scopes), hauteur du module, date/heure de géolocalisation, ...).

## Lua

### Version de l'API 

La version de l'API est maintenant la 9.2.0

### Correction de bogues

correction de `scripts_installer` pour gérer les noms d'utilisateurs contenant des espaces sous Windows.

### Add action support for Lua

n/a

### Autres changements Lua

n/a

## Notes

- Lors de l'exportation vers les formats AVIF, EXR, JPEG XL ou XCF, la sélection de métadonnées spécifiques
  (par exemple, géomarquage ou créateur) n'est actuellement pas possible. Pour les formats
  AVIF, EXR, JPEG XL et XCF, darktable n'inclura aucun champ de métadonnées à moins que l'utilisateur
  ne sélectionne toutes les cases à cocher dans les options de Préférence du module d'exportation.

- Afin de supporter l'affichage correct des nombres dans darktable, la version minimale supportée
  de Gtk a dû être augmentée à 3.24.15. Pour les personnes qui ont besoin de construire darktable avec une
  version plus ancienne, cela peut être réalisé en supprimant la ligne 241 du fichier
  darktable.css sur votre système.
  Voir : [#13166](https://github.com/darktable-org/darktable/issues/13166)

- À partir de la version 4.4, une nouvelle politique de prise en charge des versions de macOS
  a été mise en place - les versions de darktable ne prendront désormais en charge que les versions de macOS
  qui sont également prises en charge par Apple.
  La version 4.6 ne prend donc plus en charge les versions de macOS antérieures à la version 12.5.

## Changement de dépendances

### Obligatoires

n/a

### Optionnelle(s)

Augmenter libavif à 0.9.3

## Changements RawSpeed

n/a

## Supports d'appareils, comparés à la version 4.4

### Support de base

- Canon EOS Kiss F
- Canon EOS Kiss X50
- Canon EOS Kiss X90
- Canon IXY 220F (dng, chdk)
- Canon PowerShot SX220 HS (chdk)
- Fujifilm FinePix SL1000
- Fujifilm GFX100 II (compressé)
- Fujifilm X-S20 (compressé)
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
- Nikon Coolpix A1000 (12bit-non-compressé)
- Nikon Z f (14bit-compressé)
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

### Préréglages de la balance des blancs

- Leica M (Typ 240)
- Olympus E-P7
- Olympus TG-6
- Phase One IQ180
- Sony ILCE-7CM2

### Profils de bruit

- Canon IXY 220F
- Nikon Z 8
- Nikon Z f
- Olympus E-P7
- Pentax *ist DS
- Sony ILCE-6700
- Sony ILCE-7CM2

### Absence de prise en charge du mode de compression

- Adobe enhanced DNGs (JPEG XL flavor)
- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Samsung Expert RAW DNGs (JPEG XL flavor)
- Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### Support Suspendu

La prise en charge des appareils suivants est suspendue car aucun échantillon n'est disponible sur raw.pixls.us :

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
- Sinar Hy6/ Sinarback eXact
- ST Micro STV680

## Traductions

Ajout du support pour l'aide en ligne en néerlandais qui est maintenant complète.

  Albanais
- Portugais (Brésilien)
- Chinois (Simplifié)
- Chinois (Traditionel)
- Tchèque
- Néerlandais
- Espagnol Européen
- Finlandais
- Français
- Allemand
- Hongrois
- Italien
- Japonais
- Polonais
- Russe
- Slovénien
- Turc
- Ukrainien
