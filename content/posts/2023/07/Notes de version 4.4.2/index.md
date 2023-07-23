---
title: "Version corrective 4.4.2"
aliases:
  - "darktable-4-4-2"
date: "2023-07-22"
featured: true
pinned: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"

coverImage: "images/dt_logo-4.4.2.png"
---

Nous sommes fiers d'annoncer la nouvelle version corrective de darktable, 4.4.2 !

La version github est ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.4.2](https://github.com/darktable-org/darktable/releases/tag/release-4.4.2).

Comme toujours, n'utilisez pas l'archive autogénérée fournie par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```
$ sha256sum darktable-4.4.2.tar.xz
c11d28434fdf2e9ce572b9b1f9bc4e64dcebf6148e25080b4c32eb51916cfa98  darktable-4.4.2.tar.xz
$ sha256sum darktable-4.4.2-x86_64.dmg
9eb84ea041daad704a8d4226d8c7cba77522dcd003d7166961869b1cfaa9ac9a  darktable-4.4.2-x86_64.dmg
$ sha256sum darktable-4.4.2-arm64.dmg
4576f4cc25f96d5a2334993bb847e826591b3190ddf24fb83461df093ce8ee2a  darktable-4.4.2-arm64.dmg
$ sha256sum darktable-4.4.2-win64.exe
3f3557281a24f61080181cbde09c3d0f9853f81ff08485247e844afa9b2171a6  darktable-4.4.2-win64.exe
```

Lors de la mise à jour à partir de la série stable 4.2.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus, mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.2.x.

Il est fortement conseillé de faire une sauvegarde au préalable.

#### Note importante : pour s'assurer que darktable puisse continuer à prendre en charge le format de fichier brut de votre appareil photo, vous êtes priés de lire [cet article] (https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) sur comment/quels échantillons bruts vous pouvez contribuer pour vous assurer que nous avons l'ensemble complet d'échantillons bruts pour votre appareil photo sous licence CC0 !

Depuis darktable 4.4.0 :

- 53 commits pour darktable+rawspeed
- 19 demandes d'extension traitées
- 1 problème résolu


Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 4.4.
Les contributions sont grandement appréciées. Veuillez consulter la page
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la façon de contribuer.

## Corrections de bugs
- module filtre dégradé : Correction du calcul de la densité pour les IL négatives.

- Correction de la mauvaise allocation des tampons d'image OpenCL pour le mélange dans DEVELOP_BLEND_CS_RAW.

- Correction du calcul du roi_in dans les modules reconstruction des hautes lumières et aberrations chromatiques RAW.

- Correction de l'accrochage à la grille pour les unités cm/pouces dans la vue d'impression. Seuls les mm étaient correctement gérés.

- Correction d'un problème où la méthode de reconstruction des hautes lumières était réinitialisée en tronquées lors de l'application d'un style à partir de la table lumineuse.

- Correction du chargement de certains formats d'image à l'aide de GraphicMagick sous Windows.

- Correction de certains pixels erronés possibles dans le bord inférieur droit des images en raison d'une erreur de calcul dans le profil de couleur d'entrée et la balance des couleurs.

- Correction du calcul du ROI du module de retouche lorsqu'un recadrage est actif, rendant certaines zones de clonage inactives alors que la source se trouvait en dehors de la zone recadrée. Ce bogue n'était visible que dans la vue principale de la chambre noire.

Correction du positionnement du Roi du dématriceur en fonction de l'algorithme et du capteur. Éviter quelques (petits) artefacts noirs sur les bords de l'image.

## Lua

### Version API

- N/A

### Autres changements Lua

- N/A

## Notes

- Lors de l'exportation vers les formats AVIF, EXR, JPEG XL ou XCF, la sélection de métadonnées spécifiques
  (par exemple, l'étiquette géographique ou le créateur) n'est actuellement pas possible.
  Pour les formats AVIF, EXR, JPEG XL et XCF, darktable n'inclura aucun champ de métadonnées à moins que
  l'utilisateur ne sélectionne toutes les cases à cocher dans les options de préférences d'exportation.

- Afin de supporter l'affichage correct des nombres dans darktable, la version minimale supportée de Gtk
  a dû être augmentée à 3.24.15. Pour les personnes qui ont besoin de construire darktable avec une version
  plus ancienne, ceci peut être supporté en inversant le changement suivant : supprimez la ligne 241
  du fichier `darktable.css` sur votre système. Voir : [#13166](https://github.com/darktable-org/darktable/issues/13166)

- À partir de cette version, une nouvelle politique de support des versions de macOS sera mise en place.
  Les versions de darktable ne prendront en charge que les versions de macOS qui sont également prises en charge par Apple.
  Ainsi, la version 4.4 ne prend plus en charge les versions de macOS antérieures à la 11.3.

## Dépendances modifiées

### Obligatoire

- Aucune

### Facultatif

- Aucune

## RawSpeed change


## Prise en charge des appareils par rapport à la version 4.4.0

### Support de base

- N/A

### Préréglages de la balance des blancs

### Profils de bruit

### Prise en charge des modes de compression manquants

- Apple ProRAW DNGs
- CinemaDNG sans perte (Blackmagic, DJI, etc.)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Samsung Expert RAW DNGs

### Prise en charge suspendue

La prise en charge des caméras suivantes est suspendue car aucun échantillon n'est disponible sur raw.pixls.com :

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

- Nouvelle traduction anglaise avec majuscules
- Allemand
- Espagnol européen
- Finlandais
- français
- hébreu
- hongrois
- Japonais
- Polonais
- Portugais brésilien
- Russe
- Slovène
- Albanais
- ukrainien
- Chinois - Chine
- Chinois - Taïwan

