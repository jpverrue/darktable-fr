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

#### Note importante :
Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil
photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri).
Vous y apprendrez comment contribuer à la constitution de l’ensemble d’échantillons
d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.6 :

- 1484 commits à darktable + rawspeed  
- 513 demandes de pull traitées  
- 60 problèmes fermés

_Veuillez noter que la documentation de darktable n'est pas encore complète
pour la version 4.8 et que les contributions sont très appréciées.
Veuillez consulter la [documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
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

- Réécriture du code de regroupement dans l'affichage des cartes afin
  d'accélérer considérablement les performances sur les grandes collections
  (la cartographie devrait désormais être utilisable avec plus d'un million
  d'images géolocalisées sélectionnées).

## Autres changements

- Modification de l'ordre de tri des mots-clés. en un ordre naturel et
  insensible à la casse des caractères.

- Ajout d'un backend pour le stockage de mots de passe Apple Keychain pour
  les appareils macOS.

- Dans le module Collections, le tri a été intégré dans l'en-tête du
  module au lieu d'une préférence. Toutes les collections peuvent désormais
  être triées facilement par un simple clic sur le bouton de tri.

- Suppression du mode Sans restriction dans les préférences de darktable
  pour des raisons de sécurité. Il a été prouvé que ce paramètre n'était pas
  sûr dans de nombreux cas. Il peut toujours être activé via le fichier de
  ressources si nécessaire.

- Ajout de boutons à côté des instantanés pour permettre de les restaurer
  en tant que nouvel historique. Les instantanés prennent également en charge
  les masques dessinés. Il est possible de visualiser la différence entre la
  vue principale de la chambre noire et un instantané avec des masques
  différents par exemple.

- En utilisant <kbd>Clic droit</kbd> sur les icônes des étiquettes de couleur
  (barre d'outils inférieure de la table lumineuse), il est possible d'ajouter
  une description aux étiquettes de couleur. C'est un moyen pratique de se
  souvenir de l'utilisation de l'étiquette de couleur dans le flux de travail.
  
- Suppression des options AI dans le module Calibration des couleurs en raison
  de leur qualité médiocre.
  
- Il est désormais possible d'importer des images sur place dans un montage GVfs
  avec l'environnement Gnome sous GNU/Linux.

- Ajout d'un contour en pointillé pour la zone sélectionnée dans la vue
  d'impression.

- Ajout de quelques champs EXIF supplémentaires dans le module Informations de
  l'image : balance des blancs, programme d'exposition, flash et mode de mesure.
  Ces champs sont remplis automatiquement pour les nouvelles importations. Pour
  les photos existantes, veuillez effectuer une "actualisation EXIF" (module Action
  sur la sélection, onglet méta-données), sur les images sélectionnées.
  
- Ajout d'un backend pour le stockage des mots de passe du gestionnaire
  d'identifiants Windows.

- Ajout de la fusion par masques au module de reconstruction des hautes lumières.
  Le masque matriciel généré contient la quantité de données reconstruites et
  peut être utilisé avec tous les algorithmes.

- Les positions du sélecteur de couleurs sont définies par les coordonnées de
  l'image au lieu de celles de sortie. Il restera au même endroit quels que
  soient les modules de distorsion utilisés.

- La sauvegarde automatique de l'historique peut être désactivée en raison de la
  lenteur des disques ; cette opération est désormais effectuée image par image au lieu
  d'être globale.

- Ajout de la prise en charge des fichiers DNG nécessitant les balises d'étalonnage de
  l'appareil photo pour une balance des blancs correcte (par exemple, certains appareils
  Google Pixel). Nécessite la relecture des métadonnées EXIF.

- Amélioration de l'efficacité du panneau d'accès rapide en permettant de réinitialiser
  les modules et d'appliquer les préréglages sans ouvrir le module complet.
  Ajout d'un plus grand nombre de contrôles par défaut afin de réduire
  davantage la nécessité de quitter le panneau pendant l'édition.

- Ajout de nouveaux types de collection et de filtres pour le flash,
  la balance des blancs, le programme d'exposition, le mode de mesure
  et le regroupement d'images.

- Suppression de l'ancien type de regroupement d'images dans les collections
  et du filtre qui donnaient des résultats confus.

- Ajout du support pour le profil dans l'histograme.

- La carte peut désormais être parcourue par petites étapes à l'aide
  des touches fléchées (gauche/droite/haut/bas) et, en combinaison
  avec <kbd>Ctrl</kbd>, par un pas plus important.

## Correction de bogues

- Correction de la copie de plusieurs instances afin de garantir que
  l'ordre correct est appliqué lors du collage dans une nouvelle image.

- Correction du module Aberration chromatique raw sur les systèmes basés sur Clang.

- Correction de l'outil de recherche des miniatures en cas d'historique
  supprimé. Nous nous assurons que le crawler est conscient de l'existence
  d'un historique supprimé et qu'il régénère les miniatures comme prévu.


- Correction de la visualisation des masques dessinés dans la chambre
  noire dès que le pixelpipe a été modifié. Les masques dessinés
  seront maintenant correctement ajustés s'il y a une nouvelle distorsion
  sur le pipe par exemple. Ce n'était pas le cas jusqu'à ce que l'on édite
  le masque.
  
- Correction des fuites de mémoire lors de l'importation d'images AVIF.

- Correction de la fusion des masques pour les images sRAW dans l'espace
  colorimétrique IOP_CS_RAW.

- Correction du verrouillage des périphériques OpenCL pour les modules
  appelant dt_dev_pixelpipe_process().
  
- Correction de l'interface utilisateur qui ne répondait plus en raison
  d'un historique très important.

- Correction des calculs de l'espace colorimétrique UCS afin d'éviter
  les erreurs div-by-zero et out-of-gamut.

- Correction d'un certain nombre de problèmes liés à la fusion de
  filtres guidés et aux distorsions des masques internes.

- Correction de quelques problèmes liés au module de recadrage et
  aux dimensions de sortie/exportation.

- Correction du traitement de l'exportation lorsque la haute qualité
  est désactivée et que l'agrandissement est activé.

- Correction du montage de l'appareil photo lorsque GPhoto2 signale
  en interne un seul appareil photo connecté plusieurs fois.

- Correction du problème empêchant l'exportation vers une version
  récente de Piwigo.

- Correction de nombreux problèmes de stabilité pour une meilleure
  robustesse générale.

## Lua

n/a

### API Version

- La version de l'API est maintenant la 9.3.0

### Correction de bogues

n/a

### Add action support for Lua

n/a

### Autres changements Lua

- Mise à jour du Lua interne vers la version 5.4.6.

- Ajout de la fonction duplicate_image_with_history à darktable.database.

- Widget bouton - ajout d'un membre halign pour positionner horizontalement
  l'étiquette.

- Widget bouton - ajout d'un membre image pour utiliser une image comme libellé du bouton.

- Widget bouton - ajout de image_align pour positionner horizontalement l'image.

- Widget box - ajout d'un membre expand pour contrôler les cellules qui se
  développent pour remplir l'intérieur de la boîte.

- Widget box - ajout d'un membre fill pour contrôler si les widgets remplissent la cellule.

- Widget box - ajout d'un membre padding pour contrôler la taille du padding des cellules.

- Ajout d'un membre active_preset à darktable.gui.libs pour obtenir le nom du preset
  actif de la librairie.

## Notes

- Lors de l'exportation vers les formats AVIF, EXR, JPEG XL ou XCF, la
  sélection de métadonnées spécifiques (par exemple, géomarquage ou
  créateur) n'est actuellement pas possible. Pour les formats AVIF,
  EXR, JPEG XL et XCF, darktable n'inclura aucun champ de métadonnées
  à moins que l'utilisateur ne sélectionne toutes les cases à cocher
  dans les options de Préférence du module d'exportation.

- La version 4.8 ne prend plus en charge les versions de macOS antérieures
  à 13.5.

## Changement de dépendances

### Obligatoires

- La version minimale de libpng 1.5.x est désormais requise.
- La version 0.27.2 d'Exiv2 est désormais requise.
- La version minimale de pugixml 1.5.x est désormais requise.
- La version minimale de libcurl 1.5.x est désormais requise.

### Optionnelle(s)

- n/a

## Changements RawSpeed

- Les appareils Fujifilm équipés du capteur X-Trans 4 et les appareils
  plus récents utilisent désormais le recadrage fourni par le boîtier.

## Supports d'appareils, comparés à la version 4.6

### Support de base

- Canon EOS R100 (Nécessite LibRaw 202403 ou une version ultérieure)
- Canon EOS R50 (Nécessite LibRaw 202403 ou une version ultérieure)
- Canon EOS R6 Mark II (Nécessite LibRaw 202403 ou une version ultérieure)
- Canon EOS R8 (Nécessite LibRaw 202403 ou une version ultérieure)
- Canon EOS Ra (Nécessite LibRaw 202403 ou une version ultérieure)
- Fujifilm FinePix S9600fd
- Fujifilm X100VI (compressé)
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

### Préréglages de la balance des blancs

- Canon EOS R6 Mark II (Nécessite LibRaw 202403 ou une version ultérieure)
- Fujifilm X-H2
- OM System OM-1 Mark II
- OM System OM-5

### Profils de bruit

- Canon EOS R6 Mark II (Nécessite LibRaw 202403 ou une version ultérieure)
- Fujifilm GFX 50R
- OM System OM-1 Mark II
- OM System OM-5
- Phase One IQ180
- Sony ILCE-9M3
- Sony ZV-1

### Absence de prise en charge du mode de compression

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- OM System 14-bit high resolution ORFs
- Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### Fin de support

La prise en charge des appareils suivants est suspendue car aucun
échantillon n'est disponible sur raw.pixls.us :

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

## Traductions

- Tchèque
- Allemand
- Espagnol Européen
- Finlandais
- Français
- Hongrois
- Italien
- Japonais
- Néerlandais
- Polonais
- Portuguais Brésilien 
- Russz
- Slovène
- Albanais
- Ukrainien
- Chinois (Simplifié)
- Chinois (Traditionel)
