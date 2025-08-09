---
title: "Version 5.2.1"
aliases:
  - "darktable-5-2-1"
date: "2025-08-06"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-5.2.1.png"
---

La version 5.2.1 de darktable est sortie ce mercredi.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

Les binaires pour macOS, windows et appimage, sont disponibles en bas
de [cette page Github](https://github.com/darktable-org/darktable/releases/tag/release-5.2.1)
Ils seront également disponibles sur la page [install du site dartable.org](https://www.darktable.org/install/) dans quelques jours.
Les versions compilées spécifiquement pour les différentes distributions Linux seront disponibles
selon la diligence de leurs packageurs. En attendant, vous pouvez utiliser en toute sécurité,
la version [appimage](https://github.com/darktable-org/darktable/releases/download/release-5.2.1/Darktable-5.2.1-x86_64.AppImage).

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 5.2.1 !

La version github est disponible ici :
[https://github.com/darktable-org/darktable/releases/tag/release-5.2.1](https://github.com/darktable-org/darktable/releases/tag/release-5.2.1).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Si vous ne construisez que pour vous-même
sans créer de paquetage pour une distribution quelconque, le clonage du code source
dans git est un moyen encore plus pratique.

Les sommes de contrôle sont :

```
$ sha256sum darktable-5.2.1.tar.xz
02f1aa9ae93949e7bc54c34eeb5ff92c2b87f95d2547865df55c60467564ee11  darktable-5.2.1.tar.xz

$ sha256sum darktable-5.2.1-x86_64.dmg
5060d73c03b3c7f4ca69a77039e69653fd2310df8cb649d66fc89f4c45289b0c  darktable-5.2.1-x86_64.dmg

$ sha256sum darktable-5.2.1-arm64.dmg
b7d45bb3d2550695e4eba4d260580561b51c18d612d5e2b2c9e67a432ae2516c  darktable-5.2.1-arm64.dmg

$ sha256sum darktable-5.2.1-arm64-13.5.dmg
7776f94503a3ed634577d5626097aed3338ceff013b43d1776f46f0ad6a62f57  darktable-5.2.1-arm64-13.5.dmg

$ sha256sum darktable-5.2.1-win64.exe
c470779d92a08345c6f9b65457484e2fe4406537b0604a6e0df0339c81059158  darktable-5.2.1-win64.exe

$ sha256sum Darktable-5.2.1-x86_64.AppImage
9133f7f29418e714a0dbf5b24f115314bf00d8e9517d62d8f3cd778c7f6e0b87  Darktable-5.2.1-x86_64.AppImage
```

Lors de la mise à jour à partir de la série stable 5.0.x, gardez à l'esprit que
vos modifications seront préservées pendant ce processus, mais que la nouvelle
bibliothèque et la configuration ne seront plus utilisables avec la version 5.2.0


Il est fortement conseillé d'effectuer d'abord une sauvegarde.


#### Note importante :
Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil
photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri).
Vous y apprendrez comment contribuer à la constitution de l’ensemble complet d’échantillons
d’images (sous licence CC0) pour votre boîtier.

Depuis darktable 5.2.0 :

- 74 _commits_ vers darktable+rawspeed
- 37 _pull requests_ traitées
- 11 _issues_ fermées
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 5.2
et que toutes les contributions sont très appréciées. Veuillez consulter la
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable
5.2.1. Veuillez consulter le manuel de l'utilisateur pour plus de détails
sur les changements individuels (le cas échéant).

- N/A

## Améliorations de l'interface utilisateur (UI) et de l'expérience utilisateur (UX)
- Réinitialiser la position de la fenêtre si elle ne peut pas être placée à la dernière
  position utilisée sur aucun moniteur disponible, dans une configuration multi-moniteurs.

## Améliorations des performances

- N/A

## Autres changements

- Ajout d'un curseur d'activité lors de la génération d'un aperçu de trace GPX
  et d'une barre de progression lors de l'application des positions d'une trace aux images.

## Correction de bogues

- Corrigé :la traduction des libellés du module instantanés.

- Agrandissement des zones de saisies dans les préférences Lua afin que les entrées
  longues soient visibles.

- Corrigé : la compilation ne fontionne pas lorsque OpenMP est désactivé.

- Corrigé : un bug OpenCL dans le module **Masque raster** pour les images non raw.

- Corrigé : une régression introduite dans darktable 5.0 qui empêchait la lecture des
  fichiers RAW provenant d'anciens appareils photo Canon (datant de plus de vingt ans)
  qui enregistraient les fichiers RAW avec l'extension .TIFF.

- Corrigé : problème empêchant le module **Masques raster externes** de fonctionner
  sous Windows avec les fichiers PFM dont le nom contient des caractères Unicode.

- Corrigé : un bug dans le code OpenCL du module **Liquéfier** qui entraînait une sortie incorrecte.

- Corrigé : la pipette de l'égaliseur de couleurs ne fonctionne pas dans le panneau d'accès rapide.

- Corrigé : Les fichiers TIFF avec palettes étaient lus de manière incorrecte par le chargeur principal
  basé sur libtiff, ce qui entraînait une perte d'informations sur les couleurs. Nous les transférons
  désormais vers le chargeur de secours GraphicsMagick/ImageMagick (généralement disponible dans
  les versions officielles/distribuées) pour une lecture correcte.

- Les noms des variables pour les balises de métadonnées ont été modifiés pour correspondre au nom
  complet de la balise, en respectant la casse, afin d'éviter toute ambiguïté.

- Corrigé : impossibilité de supprimer les collections dont le nom contient une apostrophe.

## Lua

### Version de l'API

- La version de l'API est la 9.5.0

### Nouvelles fonctionnalités

- Ajout de `apply_sidecar` à `dt_lua_image_t` afin qu'un fichier sidecar puisse
  être chargé et appliqué à une image dans la vue **Table lumineuse**

### Correction de bogues

- N/A

### Ajout d'un support d'action pour Lua

- N/A

### Autres changements Lua

- N/A

## Notes

- Lors de l’exportation vers les formats AVIF, EXR, JPEG XL ou XCF,
  la sélection de métadonnées spécifiques (par exemple, géomarquage ou
  créateur) n’est actuellement pas possible. Pour les formats AVIF, EXR,
  JPEG XL et XCF, darktable n’inclura aucun champ de métadonnées à moins que
  l’utilisateur ne sélectionne toutes les cases à cocher dans les options
  de Préférence du module Exporter.

- Depuis la version 4.8, Darktable ne prend plus en charge les versions de macOS
  antérieures à 13.5.

## Changement de dépendances

### Obligatoire(s)

- N/A

### Optionnelles

- N/A

## Changements RawSpeed

- Les modèles OM-1 Mark II et OM-3 d'OM System ont été mis à jour pour une meilleure
  gestion des fichiers RAW haute résolution.

## Nouveaux Supports d'appareils depuis la version 5.2.0

### Support de base


- Nikon D200 (12bit-compressé)
- Nikon D5300 (12bit-compressé)
- Panasonic DC-GH7 (4:3)
- Samsung GX-1L


### Préréglages de la balance des blancs

- Fujifilm GFX 100. Nom du modèle corrigé
- Nikon Z50_2

 
### Profils de réduction de bruit

- Fujifilm GFX100S II
- Panasonic DC-S5M2X
- Pentax *ist D

### Absence de prise en charge des fichiers raw compressés

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Phase One other than IIQ L
- Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### Fin de Support

La prise en charge des appareils suivants est suspendue car aucun échantillon n’est disponible sur raw.pixls.us :

- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm IS-1
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Olympus SP320
- Phase One IQ250
- ST Micro STV680

## Traductions

- Tchèque
- Allemand
- Espagnol Européen
- Finlandais
- Français
- Hongrois
- Italien
- Japonais
- Coréen
- Néérlandais
- Portugais Bresilien
- Russe
- Slovenien
- Albanais
- Ukrainien
- Chinois (Simplifié)
- Chinois (Traditionel)
