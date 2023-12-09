---
title: "Version 4.6.0"
aliases:
  - "darktable-4-6-0"
date: "2023-12-21"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-4.6.0.png"
---

La version 4.6.0 de darktable est sortie aujourd'hui.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.6.0 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.6.0](https://github.com/darktable-org/darktable/releases/tag/release-4.6.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```
$ sha256sum darktable-4.6.0.tar.xz
??? darktable-4.6.0.tar.xz
$ sha256sum darktable-4.6.0-x86_64.dmg
??? darktable-4.6.0-x86_64.dmg
$ sha256sum darktable-4.6.0-arm64.dmg
??? darktable-4.6.0-arm64.dmg
$ sha256sum darktable-4.6.0-win64.exe
??? darktable-4.6.0.exe
```

Lors de la mise à jour à partir de la série stable 4.4.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus,
mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.2.x.

Il est fortement conseillé de faire d'abord une sauvegarde.  

#### note importante : Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil photo,
veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri). Vous y apprendrez comment contribuer
à la constitution de l’ensemble d’échantillons d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.4 :  


- ??? commits à darktable+rawspeed  
- ??? demandes de pull traitées  
- ??? problèmes fermés  
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 4.6 et que les contributions
sont très appréciées. Veuillez consulter [le projet documentation](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable
4.6. Veuillez consulter le manuel de l'utilisateur pour plus de détails sur les
changements individuels (le cas échéant).

- L'historique d'édition est maintenant sauvegardé automatiquement de façon périodique (toutes les 10 secondes),
  lors de l'édition d'images dans la vue chambre noire. L'intervalle d'enregistrement automatique peut
  être modifié (via une préférence) ou l'enregistrement automatique peut être entièrement désactivé (en réglant l'intervalle sur 0).

- Un nouveau module de traitement _rgb primaries_ a été ajouté. Ce module peut être utilisé pour des corrections
  de couleurs délicates ainsi que pour l'étalonnage créatif. Il permet de déplacer les couleurs primaires rouges,
  vertes et bleues en utilisant les paramètres "teinte" et "pureté".

  L'opération sous-jacente sur les pixels est essentiellement la même que le mélange des canaux.

- En outre, le module _sigmoïd_ comprend désormais une nouvelle section _primaires_,
  qui peut être utilisée pour gérer avec élégance les situations d'éclairage difficiles
  (par exemple, les LED) et ajuster l'aspect général de l'image. La modification de ces
  paramètres permet d'obtenir des couchers de soleil agréables, des tons de peau améliorés, etc.
  Cette fonctionnalité ne peut être utilisée qu'avec le mode par canal de Sigmoïd et est
  librement basée sur les idées de Troy Sobotka [AgX](https://github.com/sobotka/AgX-S2O3)
  et de travaux connexes dans la [communauté Blender](https://blenderartists.org/t/feedback-development-filmic-baby-step-to-a-v2/1361663).
  Le preset "smooth" inclus devrait fournir un bon point de départ
  pour d'autres corrections utilisant cette fonctionnalité.

- Lorsque vous travaillez avec les modules Liquifier et Retouche, l'image complète non recadrée est désormais toujours affichée,
  tout recadrage étant indiqué par l'affichage d'un rectangle superposé.
  Cela permet d'utiliser des parties recadrées de l'image sans avoir à désactiver
  le module de recadrage et à le réactiver une fois l'opération terminée.

- Lors d'un panoramique ou d'un zoom dans la vue darkrom, un espace réservé en basse résolution était affiché
  jusqu'à ce que l'image soit entièrement recalculée pour la région nouvellement visible.
  Désormais, si une partie de la vue précédente est encore visible, cette partie sera immédiatement affichée en haute qualité,
  le reste de l'image étant temporairement affiché en basse qualité jusqu'à ce que la Le traitement du pixelpipe soit terminée.

  Ceci a été réalisé dans le cadre d'une refonte complète de l'affichage des images de la chambre noire,
  qui a également permis de supprimer certains sauts gênants lors du remplacement de l'espace réservé
  de basse résolution par des données d'image recalculées, ou lors du passage de la vue complète à la vue recadrée
  (lorsque les modules Recadrer, Retouche ou Liquéfier perdent le focus).
  
## Amélioraation des performances

- OpenCL est désormais initialisé en arrière-plan immédiatement après le lancement de l'interface utilisateur de darktable,
  la progression étant indiquée par une série de messages popup.
  Auparavant, cette opération était effectuée avant le lancement de l'interface principale,
  ce qui pouvait entraîner des délais importants (parfois plus d'une minute)
  entre l'ouverture de darktable par l'utilisateur et l'apparition de quoi que ce soit à l'écran,
  donnant l'impression que darktable n'avait pas démarré. Notez que le traitement sera plus lent
  (puisque darktable n'utilisera que le CPU) jusqu'à ce qu'OpenCL soit complètement initialisé.

 - Un section de code openCL a été mis en œuvre pour la correction des objectifs à l'aide des métadonnées de correction intégrées.
 
 - La vitesse d'affichage des images dans la vue Carte a été augmentée de 25 %.
 
 - La vitesse d'exportation a été améliorée pour les images JPEG 2000 et TIFF noir et blanc.
 
 - Le module Aberrations chromatiques est maintenant environ 10% plus rapide lorsqu'il est exécuté sur le CPU.
  
