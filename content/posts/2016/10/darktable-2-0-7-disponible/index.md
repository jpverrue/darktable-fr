---
title: "darktable 2.0.7 disponible"
date: "2016-10-25"
categories: 
  - "actualites"
tags: 
  - "news"
---

Nouvelle version mineure pour darktable !

Voici les changements depuis la version 2.0.6:

## Nouvelles fonctionnalités

- Filtrage de certains tags EXIF au moment de l'exportation. Aide pour garder une taille limite d'environ 64Kb pour les métadonnées.
- Support pour les nouveaux formats RAW Canon EOS 80D {m,s}
- Toujours afficher le rendu sélecteur dans  la Table Lumineuse
- Retire l'élévation quand les données géo sont effacées dans la vue Carte
- Module temperature, module inversion: ajout de la vectorisation SSE pour X-Trans
- Module temperature: ajout de raccourcis clavier pour les préréglages

## Corrections de bugs

- Rawspeed: correction de compilation avec libjpeg (par opposition à libjpeg-turbo)
- OpenCL: toujours utiliser le transfert de mémoire bloqué hôte<->appareil
- OpenCL: mot-clé `static` problématique retiré dans extended.cl
- Correction des crash avec profil d'affichage manquant
- Histogramme: toujours afficher l'ouverture avec un chiffe après un point.
- Montre si OpenEXR est supporté dans `--version`
- Rawspeed: utilise un moyen non obsolète pour donner la version d'OSX
- Ne montre pas les messages de bug à propos de copie locale quand on essaye de supprimer physiquement une image déjà supprimée

## Supports de base (nouvellement ajoutés ou juste petites corrections)

- Canon EOS 100D
- Canon EOS 300D
- Canon EOS 6D
- Canon EOS 700D
- Canon EOS 80D (sRaw1, sRaw2)
- Canon PowerShot A720 IS (dng)
- Fujifilm FinePix S100FS
- Nikon D3400 (12bit-compressed)
- Panasonic DMC-FZ300 (4:3)
- Panasonic DMC-G8 (4:3)
- Panasonic DMC-G80 (4:3)
- Panasonic DMC-GX80 (4:3)
- Panasonic DMC-GX85 (4:3)
- Pentax K-70

## Supports de base (corrections, car ne fonctionnait plus avec 2.0.6, l'équipe s'en excuse!)

- Nikon 1 AW1
- Nikon 1 J1 (12bit-compressed)
- Nikon 1 J2 (12bit-compressed)
- Nikon 1 J3
- Nikon 1 J4
- Nikon 1 S1 (12bit-compressed)
- Nikon 1 S2
- Nikon 1 V1 (12bit-compressed)
- Nikon 1 V2
- Nikon Coolpix A (14bit-compressed)
- Nikon Coolpix P330 (12bit-compressed)
- Nikon Coolpix P6000
- Nikon Coolpix P7000
- Nikon Coolpix P7100
- Nikon Coolpix P7700 (12bit-compressed)
- Nikon Coolpix P7800 (12bit-compressed)
- Nikon D1
- Nikon D3 (12bit-compressed, 12bit-uncompressed)
- Nikon D3000 (12bit-compressed)
- Nikon D3100
- Nikon D3200 (12bit-compressed)
- Nikon D3S (12bit-compressed, 12bit-uncompressed)
- Nikon D4 (12bit-compressed, 12bit-uncompressed)
- Nikon D5 (12bit-compressed, 12bit-uncompressed)
- Nikon D50
- Nikon D5100
- Nikon D5200
- Nikon D600 (12bit-compressed)
- Nikon D610 (12bit-compressed)
- Nikon D70
- Nikon D7000
- Nikon D70s
- Nikon D7100 (12bit-compressed)
- Nikon E5400
- Nikon E5700 (12bit-uncompressed)

**L'équipe de développement a été dans l'impossibilité de rajouter le support pour les 4 appareils suivants faute d'exemplaires RAW. Si vous utilisez ces appareils, n'hésitez pas à fournir des RAW.**

- Nikon E8400
- Nikon E8800
- Nikon D3X (12-bit)
- Nikon Df (12-bit)

## Préréglages Balance des blancs

- Pentax K-70

## Profils de Bruit

- Sony DSC-RX10

## Mise à jour Traduction

- Catalan
- Allemand

Source: [https://github.com/darktable-org/darktable/releases/tag/release-2.0.7](https://github.com/darktable-org/darktable/releases/tag/release-2.0.7)
