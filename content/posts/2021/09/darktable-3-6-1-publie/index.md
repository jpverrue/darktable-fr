---
title: "darktable 3.6.1 publié"
date: "2021-09-16"
categories: 
  - "actualites"
tags: 
  - "3-6-1-release"
---

Pascal Obry vient de mettre en ligne cette mise à jour :

[TurboGit a](https://github.com/TurboGit) publié ce il y a 18 heures · [1050 commits](https://github.com/darktable-org/darktable/compare/release-3.6.1...master) à maîtriser depuis cette version

 

Nous sommes fiers d'annoncer la version 3.6.1 de darktable qui ne corrige que les bogues !

La version github est ici : [https://github.com/darktable-org/darktable/releases/tag/release-3.6.1](https://github.com/darktable-org/darktable/releases/tag/release-3.6.1) .

Comme toujours, veuillez ne pas utiliser l'archive tar générée automatiquement fournie par github, mais uniquement notre fichier tar.xz. les sommes de contrôle sont :

```
$ sha256sum darktable-3.6.1.tar.xz
a2bfc7c103b824945457a9bfed9e52f007fa1d030f9dbcb3ff0327851be42d14 darktable-3.6.1.tar.xz
$ sha256sum darktable-3.6.1.5.dmg
0fa0cd49971fdf76f690be095600250ad7777c2317f969c7135f035bc7b5f0ee darktable-3.6.1.5.dmg
$ sha256sum darktable-3.6.1.exe
34b4c1748ffe7ac66c3c79ad474b86a7aaa01ba296f8cd21929fe8024ebf3262 darktable-3.6.1-win64.exe
```

Lors de la mise à jour à partir de la série 3.4.x actuellement stable, veuillez garder à l' esprit que vos modifications seront conservées pendant ce processus, mais la nouvelle bibliothèque et la nouvelle configuration ne seront plus utilisables avec 3.4.x.

Il est fortement conseillé de faire d'abord une sauvegarde.

#### Remarque importante : pour vous assurer que darktable peut continuer à prendre en charge le format de fichier brut de votre appareil photo, _veuillez_ lire [cet article](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) sur la manière/les échantillons bruts que vous pouvez contribuer pour vous assurer que nous disposons de l' _ensemble d'_ échantillons bruts _complet_ pour votre appareil photo sous licence CC0 !

## Corrections de bugs

- Le module fixe s'étend sur le panneau d'accès rapide lors de l'activation/la désactivation du module.
- Correction d'un crash possible dans le module de calibrage des couleurs.
- Correction d'une incohérence entre le chemin CPU et GPU dans le module de calibrage des couleurs.
- Correction d'un problème possible dans le code non linéaire OpenCL Bradford dans l' étalonnage des couleurs qui entraîne un mauvais rendu des couleurs.
- Correction de la gestion et de l'encodage des chemins Windows.
- Correction d'un problème possible dans exiv2 lors de la tentative d'écriture de chaînes vides.
- Correction du bouton par échelle dans le module d'exportation.
- Correction d'un plantage lors du renommage d'un masque dessiné.
- Correction mineure de l'interface utilisateur dans le module en double.
- Correction d'un éventuel mauvais rendu de l' info-bulle du sélecteur de couleurs . (solution de contournement pour un éventuel problème Gtk).
- Correction de la variable de nom de fichier utilisée lors de l'importation de nouvelles images.
- Corriger le profil de bruit pour RICOH GR III.
- Corrigez quelques fuites de mémoire.

## Prise en charge de la caméra, par rapport à 3,6

### Soutien de base

- Leica C-Lux (3:2)
- Nikon D6 (compressé 14 bits, non compressé 14 bits, compressé 12 bits, non compressé 12 bits)
- Nikon Z fc (compressé 14 bits, compressé 12 bits)
- Sony ILCE-7RM3A
- Sony ILCE-7RM4A

### Profils de bruit

- Ricoh GR III

Vous trouverais les liens vers les fichier .exe et .dmg ainsi que les sources de cette version à la fin de cet article en anglais : https://github.com/darktable-org/darktable/releases/tag/release-3.6.1
