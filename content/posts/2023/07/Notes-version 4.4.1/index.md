---
title: "Version corrective 4.4.1"
aliases:
  - "darktable-4-4-1"
date: "2023-07-01"
featured: true
pinned: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"

coverImage: "images/dt_logo-4.4.1.png"
---

Nous sommes fiers d'annoncer la nouvelle version corrective de darktable, 4.4.1 !

La version github est ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.4.1](https://github.com/darktable-org/darktable/releases/tag/release-4.4.1).

Comme toujours, n'utilisez pas l'archive autogénérée fournie par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```
$ sha256sum darktable-4.4.1.tar.xz
e043d38d2e8adb67af7690b12b535a40e8ec7bea05cfa8684db8b21a626e0f0d  darktable-4.4.1.tar.xz
$ sha256sum darktable-4.4.1-x86_64.dmg
02352830580ad353e15b490018a94a5972755c9ae197d7eb219058469a44ba15  darktable-4.4.1-x86_64.dmg
$ sha256sum darktable-4.4.1-arm64.dmg
49fd74e0b80b7b19b1652499ba0a1b585e5a504b9977cadd7040ae761f356d75  darktable-4.4.1-arm64.dmg
$ sha256sum darktable-4.4.1-win64.exe
70dca4f5f3c4fec897a6561484fb14f81709aca3185373d9118b630d24ae2098  darktable-4.4.1-win64.exe
```

Lors de la mise à jour à partir de la série stable 4.2.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus, mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.2.x.

Il est fortement conseillé de faire une sauvegarde au préalable.

#### Note importante : pour s'assurer que darktable puisse continuer à prendre en charge le format de fichier brut de votre appareil photo, vous êtes priés de lire [cet article] (https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) sur comment/quels échantillons bruts vous pouvez contribuer pour vous assurer que nous avons l'ensemble complet d'échantillons bruts pour votre appareil photo sous licence CC0 !

Depuis darktable 4.4.0 :

- 24 commits pour darktable+rawspeed
- 17 demandes d'extension traitées
- 24 problèmes résolus


Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 4.4.
Les contributions sont grandement appréciées. Veuillez consulter la page
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la façon de contribuer.

## Corrections de bugs

- Correction d'un grossissement/réduction inversés et corrompu dans le module Liquéfier.

- Correction du code dédié CPU dans Filmique RVB V7 pour désactiver le gamut mapping.

- Correction du code dédié CPU dans docteur néga ; l'écrêtage n'était pas correctement calculé.

- Correction du libellé de l'instantané lorsqu'il contient des caractères non échappés.

- Correction d'un crash possible sous Windows lors de l'utilisation d'un masque dans le module Balance des couleurs RVB.

- Correction de la valeur par défaut lors de l'édition du nom de la première instance d'un module.

- Correction de la réinitialisation des valeurs par défaut du module le plus haut dans l'historique lorsqu'on n'utilise pas la fonction de dénomination automatique des modules.

- S'assurer que les périphériques OpenCL signalent au moins la prise en charge de la version 1.2.

- Ajout d'un support manquant pour la distorsion de masque aux modules changeant de ROI
  (région d'intérêt) en cours de traitement.

- Correction d'un problème d'espacement avec les zones de texte dans l'éditeur de métadonnées lorsque
  lorsqu'un ou plusieurs champs ont été masqués par l'utilisateur.

- Correction d'un bogue dans le code OpenCL de transformation de l'espace colorimétrique entraînant un retour vers le code CPU

- Ne plus permettre d'entrer dans le mode de prévisualisation complète lorsqu'aucune image n'est survolée ou sélectionnée.

- Correction d'un cas où aucun préréglage automatique par défaut n'était appliqué à l'image.
  Si un préréglage automatique de l'utilisateur est créé pour un module, nous voulons
  désactiver le préréglage automatique par défaut uniquement si le préréglage de l'utilisateur est effectivement appliqué
  (c'est-à-dire que l'un des critères du filtre : type d'appareil photo, objectif, iso, ouverture ou temps de pose, correspondent).

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
