---
title: "darktable 3.4.1 est sorti"
date: "2021-02-07"
categories: 
  - "actualites"
tags: 
  - "darktable"
  - "mise-a-jour"
---

Cette mise à jour concerne surtout l'interface, corrige des bugs, ajoute de nouveaux APN et aussi corrige un problème de lettres accentuées sous Windows.

Traduction de l'article en ligne l'article sur [darktable.org](https://www.darktable.org/2021/02/darktable-341-released/)

Posté sur Sam 06 février 2021 

par [Pascal Obry](https://www.darktable.org/author/pascal-obry/)

Nous sommes fiers d'annoncer la sortie de la nouvelle fonctionnalité de darktable, 3.4.1!

La version github est ici: [https://github.com/darktable-org/darktable/releases/tag/release-3.4.1](https://github.com/darktable-org/darktable/releases/tag/release-3.4.1) .

Comme toujours, veuillez ne pas utiliser l'archive tar générée automatiquement fournie par github, mais uniquement notre tar.xz. les sommes de contrôle sont:

$ sha256sum darktable-3.4.1.tar.xz
7fc3f851da9bcd7c5053ecd09f21aa3eb6103be98a6c58f52010b6f22174941e darktable-3.4.1.tar.xz
$ sha256sum darktable-3.4.1.dmg
e13112ed1d5f9c55e5287aa9d7276f04b90909b2e356640f36227a0a53321658 darktable-3.4.1.dmg
$ sha256sum darktable-3.4.1-win64.exe
94f6f0999378a541b25bd030838b508882d2bace86a95c898a30ca32c406c3f8 darktable-3.4.1-win64.exe

Lors de la mise à jour à partir de la série 3.2.x actuellement stable, veuillez garder à l'esprit que vos modifications seront conservées pendant ce processus, mais que la nouvelle bibliothèque et la nouvelle configuration ne seront plus utilisables avec 3.2.x, il est donc fortement conseillé de prendre un sauvegarder d'abord.

#### Remarque importante: pour vous assurer que darktable peut continuer à prendre en charge le format de fichier brut pour votre appareil photo, _veuillez_ lire [cet article](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) sur comment / quels échantillons bruts vous pouvez contribuer pour vous assurer que nous avons l' _ensemble d'_ échantillons bruts _complet_ pour votre caméra sous  licence CC0 !

- Près de 100 commits sur darktable + rawspeed depuis 3.4
- 25 pull requests traitées
- 18 numéros résolus

## Les grands

Aucun

## Nouvelles fonctionnalités et modifications

- Génération de vignettes plus rapide lors de l'importation.
- Quelques  améliorations CSS mineures .

## Corrections de bugs

- Correction de la gestion RVB de la correction des couleurs et de la normalisation de la saturation.
- Correction du défilement fluide sur MacOS.
- Correction de l'importation de métadonnées Lr, cela ne se fait que si aucun autre XMP n'est  présent.
- Correction de l'exportation des métadonnées qui ne doit être effectuée que si le paramètre correspondant est activé.
- Correction du défilement des popups combo-box.
- Restaurez correctement les messages de hinter de collection si nécessaire.
- Correction de l'affichage des étoiles en superposition.
- Correction du réglage du point noir lors du déplacement de l'histogramme.
- Correction des liens d'aide pour le module du groupe technique.
- Distinguez correctement les caméras avec le même préfixe dans le module de collecte.
- Correction du rendu gras sous Windows (pour les préréglages sélectionnés par exemple).
- Correction de la prise en charge de Windows PATH pour la configuration et les bibliothèques lorsque le nom du chemin contient des caractères non ASCII  .
- Masquez correctement la coche de la balise sélectionnée lorsqu'une balise n'est plus sélectionnée.
- Correction de la recherche sur le module de collecte pour plusieurs noms de fichiers séparés par une virgule.
- Correction de la taille de la poignée d'écrêtage lorsque l'aperçu sous-échantillonnage est activé.
- Correction de la lecture des commentaires des métadonnées depuis exif.
- Correction d'un cas où la vignette pouvait être désynchronisée avec l'édition de la chambre noire.
- Ne jamais afficher le curseur de la pellicule sur l'image sélectionnée sur d'autres vues.
- Ignorez d'éventuelles dates nulles sur le module de collecte qui pourraient alors planter darktable.
- Correction du rendu de l'histogramme de forme d'onde sur MacOS.
- Correction de certaines fuites de mémoire.

## Remarques

## Lua

## Dépendances modifiées

## Changements de RawSpeed

## Prise en charge de la caméra, par rapport à 3.4.0

### Préréglages de la balance des blancs

- Fujifilm X-Pro3
- Fujifilm X100V
- Olympus E-M10 Mark IV

### Profils de bruit

- Canon EOS  1500D
- Canon EOS  2000D
- Canon EOS Rebel T7
- Canon EOS -1D X Mark II
- Fujifilm X-Pro3
- Fujifilm XF10
- Nikon Z 5
- Panasonic DC - S1R
- Pentax K-1 Mark II
- Sony DSC - RX10M4

## Traductions

- afrikaans
- tchèque
- allemand
- Espagnol européen
- finlandais
- français
- hébreu
- hongrois
- italien
- polonais
- portugais brésilien
- russe
- slovaque
- slovène
