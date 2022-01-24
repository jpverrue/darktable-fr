---
title: "darktable 3.0.2"
date: "2020-04-17"
categories: 
  - "actualites"
tags: 
  - "darktable"
  - "featured"
images: 
  - "images/darktable3.jpg"
---

Nous sommes fiers d'annoncer la nouvelle version des fonctionnalités de darktable, 3.0.2 ! Les liens de téléchargement sont en bas le lien github ci-dessous. Pour les distribution Linux, il faut attendre la sortie des paquets pour les différentes distributions.

La version github est ici: [https://github.com/darktable-org/darktable/releases/tag/release-3.0.2 5](https://github.com/darktable-org/darktable/releases/tag/release-3.0.2)  .

Comme toujours, veuillez ne pas utiliser l'archive tar générée automatiquement par github, mais uniquement notre tar.xz. les sommes de contrôle sont:

$ sha256sum darktable-3.0.2.tar.xz
6abaf661fe9414e92bdb33b58b98ef024ccf6132b7876abaf0751ec2109f36fb darktable-3.0.2.tar.xz
$ sha256sum darktable-3.0.2.dmg
b71dab1b4f0ad796055f6d725a82913ad08f609de6ca96d65dbe6ffbeecb6416 darktable-3.0.2.dmg
$ sha256sum darktable-3.0.2-win64.exe
2702b553acd09250f923f6e39d71d3c0f4ba0f81801c9c1ea55466bcf1ffab42 darktable-3.0.2-win64.exe

Lors de la mise à jour à partir de la série 2.6.x actuellement stable, veuillez garder à l'esprit que vos modifications seront préservées pendant ce processus, mais la nouvelle bibliothèque et la configuration ne seront plus utilisables avec 2.6.x, il est donc fortement recommandé de faire une sauvegarde.

Remarque importante: pour vous assurer que darktable peut continuer à prendre en charge le format de fichier brut pour votre appareil photo, veuillez lire cet article sur la façon / quels échantillons bruts vous pouvez contribuer pour nous assurer que nous avons l'ensemble d'échantillons bruts complet pour votre appareil photo sous licence CC0!

# Changements depuis 3.0.1

## Nouvelles fonctionnalités et modifications

- Meilleure interface utilisateur pour les modes de fusion qui sont maintenant regroupés par catégorie.
- Ctrl + clic peut être utilisé pour renommer une instance de module.
- Autoriser une échelle de vignette plus grande.
- Ajoutez un pseudo préréglage en balance des blancs pour conserver les modifications de l'utilisateur.
- Dans le module de recadrage et rotation, il est possible d'autoriser uniquement le changement de composition verticale en utilisant le modificateur Shift lorsque vous faites glisser la zone de recadrage et horizontale en utilisant le modificateur Ctrl.

## Corrections de bugs

- Correction du mode de mise en valeur des couleurs en mode d'élimination.
- Correction d'un module étendu unique dans certains cas.
- Correction d'un problème de filigrane qui pouvait planter darktable.
- Correction d'un problème avec la rotation du masque de dégradé dans certains cas.
- Correction de la prise en charge de la compatibilité ascendante dans le module de réglage de base.
- Résoudre certains problèmes de mode plein écran MacOS.
- Correction de problèmes sur certains fichiers Lut 3D.

### Support de base

- Fujifilm GFX 100 (compressé)
- Fujifilm X-Pro3 (compressé)
- Fujifilm X100V (compressé)
- Nikon COOLPIX P950 (12 bits non compressé)
- Nikon Z 50 (12 bits compressés, 14 bits compressés)
- Olympus E-M1MarkIII
- Panasonic DC-S1 (3: 2)
- Panasonic DC-S1R (3: 2)
- Panasonic DC-TZ91 (4: 3)
- Panasonic DC-TZ95 (4: 3)
- Panasonic DC-TZ96 (4: 3)
- Panasonic DC-ZS80 (4: 3)
- Sony ILCE-6100

### Préréglages de balance des blancs

- Canon EOS 77D
- Canon EOS 9000D
- Nikon COOLPIX P1000
- Panasonic DC-GH5
- Olympus E-M1MarkIII
- Olympus E-PL6
- Olympus TG-5
- Samsung NX1

### Profils de bruit

## Traductions

- catalan
- tchèque
- danois
- allemand
- Espagnol européen
- français
- hébreu
- hongrois
- italien
- Japonais
- norvégien
- néerlandais
- polonais
- russe
- slovène
