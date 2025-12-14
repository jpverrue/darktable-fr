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

La version 5.4.0 de darktable est sortie ce XXXXX.

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
[https://github.com/darktable-org/darktable/releases/tag/release-5.4.0](https://github.com/darktable-org/darktable/releases/tag/release-5.2.0).

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

- XXXX _commits_ vers darktable+rawspeed
-  XXX _pull requests_ traitées
-   XX _issues_ fermées
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 5.4
et que toutes les contributions sont très appréciées. Veuillez consulter la
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

