---
title: "Version 5.4.1"
aliases:
  - "darktable-5-4-1"
date: "2026-02-06"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-5.4.1.png"
---

La version 5.4.1 de darktable est sortie ce vendredi.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

Les binaires pour macOS, windows et appimage, sont disponibles en bas
de [cette page Github](https://github.com/darktable-org/darktable/releases/tag/release-5.4.1)
Ils seront également disponibles sur la page [install du site dartable.org](https://www.darktable.org/install/) dans quelques jours.
Les versions compilées spécifiquement pour les différentes distributions Linux seront disponibles
selon la diligence de leurs packageurs. En attendant, vous pouvez utiliser en toute sécurité,
la version [appimage](https://github.com/darktable-org/darktable/releases/download/release-5.4.1/Darktable-5.4.1-x86_64.AppImage).

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 5.4.1 !

La version github est disponible ici :
[https://github.com/darktable-org/darktable/releases/tag/release-5.4.1](https://github.com/darktable-org/darktable/releases/tag/release-5.4.1).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Si vous ne construisez que pour vous-même
sans créer de paquetage pour une distribution quelconque, le clonage du code source
dans git est un moyen encore plus pratique.

Les sommes de contrôle sont :

```
$ sha256sum darktable-5.4.1.tar.xz
???  darktable-5.4.1.tar.xz

$ sha256sum darktable-5.4.1-arm64.dmg
???  darktable-5.4.1-arm64.dmg

$ sha256sum darktable-5.4.1-x86_64.dmg
???  darktable-5.4.1-x86_64.dmg

$ sha256sum darktable-5.4.1-win64.exe
???  darktable-5.4.1-win64.exe

$ sha256sum Darktable-5.4.1-x86_64.AppImage
???  Darktable-5.4.1-x86_64.AppImage
```

Lors de la mise à jour à partir de la série stable 5.2.x, gardez à l'esprit que
vos modifications seront préservées pendant ce processus, mais que la nouvelle
bibliothèque et la configuration ne seront plus utilisables avec la version 5.4.1


Il est fortement conseillé d'effectuer d'abord une sauvegarde.


#### Note importante :
Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil
photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri).
Vous y apprendrez comment contribuer à la constitution de l’ensemble complet d’échantillons
d’images (sous licence CC0) pour votre boîtier.

Depuis darktable 5.4.0 :

- 124 _commits_ vers darktable+rawspeed
-  74 _pull requests_ traitées
-  25 _issues_ fermées
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 5.4
et que toutes les contributions sont très appréciées. Veuillez consulter la
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable
5.4.1. Veuillez consulter le manuel de l'utilisateur pour plus de détails
sur les changements individuels (le cas échéant).

- N/A

## Améliorations de l'interface utilisateur (UI) et de l'expérience utilisateur (UX)

- N/A

## Améliorations des performances

- N/A

## Autres changements

- N/A

## Correction de bogues

- Corrigé : erreur de traitement du facteur d'échelle lors de l'exportation avec des multi-préréglages.

- Corrigé : URL d'aide manquante, renvoyant vers la documentation en ligne, pour le nouveau module AgX.

- Corrigé : mauvaise gestion du remplacement s'il est changé lors de l'export.

- Corrigé : images exportées avec des paramètres incorrects lors de l'utilisation de l'exportation multi-préréglages.

- Corrigé : un préréglage avec application automatique, spécifique au format RAW, était appliqué à des images non RAW.
  
- Corrigé : RustiCL obtient les indicateurs d'optimisation par défaut pour la compilation comme les autres plateformes.

- Corrigé : le chargement de certains fichiers ORF Olympus (par exemple E-410 et E-510)
  en raison d'un risque de plantage ou de corruption de la mémoire lors de l'analyse de la balise Exif de préservation des hautes lumières.

- Correction du support des masques dans le module Mise à l'échelle des pixels.

- Corrigé : plantage possible lors de l'utilisation des espaces de travail, dû à l'ordre non déterministe de la liste des espaces de travail lus sur le disque.

- La liste des tags XMP disponibles dans les préférences de l'Éditeur de métadonnées a été limitée aux tags XMP censés être modifiables par l'utilisateur.

- Corrigé : mise à jour des informations de vignette dans les superpositions ou les infobulles lorsque le contenu
  des variables de métadonnées est modifié. Autrement dit, lorsque les métadonnées sont modifiées, nous devons recalculer les informations de vignette.

- Correction d'un blocage possible lors de la suppression de l'historique sur les systèmes rapides.

- Correction d'un crash possible lors de l'initialisation de l'interface graphique du module Égaliseur de Couleur.

- Corrigé : problème dans la Vue sélection lorsque le passage à la Chambre noire. Cela échouait parfois avec un message d'erreur.
  
- Correction d'une incohérence dans l'interface utilisateur du module Styles lorsqu'il est affiché dans la vue Chambre noire.
  Dans ce cas, il n'est pas possible de créer un duplicata auquel le style est appliqué, et le paramètre de la case à cocher
  correspondante était simplement ignoré. Pour éviter toute confusion, la case à cocher est désormais masquée dans la vue Chambre noire.

- Corrigé : réinitialisation aux paramètres OpenCL par défaut pour chaque périphérique.

- problème de métadonnées potentiellement obsolètes lors du retour depuis la chambre noire.
  Par exemple, si l'image était recadrée dans la chambre noire, les métadonnées `$(WIDTH.x)` et `$(HEIGHT.x)` n'étaient pas correctes sur la table lumineuse.
  
- Correction d'un problème lors des mises à jour des variables `$(CATEGORY[n,m])`, lorsqu'un mot-clé est attribué, lié à l'absence de superposition des vignettes

- Corrigé : saut du curseur de courbure lorsqu'il est utilisé dans le gestionnaire de masques.

- Corrigé : plantage lors du montage d'une caméra à partir de darktable en raison des paramètres régionaux actifs. Le montage s'effectue désormais à l'aide des paramètres régionaux C.

## Lua

### Version de l'API

- La version de l'API est la 9.6.0

### Nouvelles fonctionnalités

- N/A

### Correction de bogues

- N/A

### Ajout d'un support d'action pour Lua

### Autres changements Lua

- N/A

## Notes



- Lors de l'exportation vers les formats AVIF, EXR, JPEG XL ou XCF, la sélection de métadonnées spécifiques (par exemple, géomarquage ou créateur) n'est actuellement pas possible. Pour les formats AVIF, EXR, JPEG XL et XCF, darktable n'inclura aucun champ de métadonnées à moins que l'utilisateur ne sélectionne toutes les cases à cocher dans les options de Préférence du module Exporter.

- À partir de la version 5.4, les versions macOS antérieures à 14.0 ne sont plus prises en charge sur les Mac Apple Silicon, ni les versions antérieures à macOS 15 sur les Mac Intel.

## Changement de dépendances

### Obligatoire(s)

- N/A

### Optionelle(s)

- N/A

## Changements RawSpeed

- N/A

## Nouveaux Supports d'appareils depuis la version 5.4.0

### Support de base 

- N/A

### Préréglages de la balance des blancs

- N/A

### Profils de réduction de bruit

- Canon EOS 10D
- Sony ILCE-7CR

### Absence de prise en charge des fichiers raw compressés

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Phase One other than IIQ L
- Sony ARW 4.0/5.0 downsized lossless ("M" for full-frame, "S" for full-frame & APS-C) and ARW 6.0 lossy

### Fin de Support

La prise en charge des appareils suivants est suspendue car aucun échantillon n’est disponible sur raw.pixls.us.

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
- Espagnol européen
- Finlandais
- Français
- Hongrois
- Italien
- Japonais
- Coréen
- Néerlandais
- Polonais
- Portugais Brésilien
- Slovène
- Albanais
- Suédois
- Ukrainien
- Chinois (simplifié)
- Chinois (traditionel)



