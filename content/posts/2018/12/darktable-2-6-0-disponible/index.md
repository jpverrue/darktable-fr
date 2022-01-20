---
title: "darktable 2.6.0 disponible !"
date: "2018-12-24"
categories: 
  - "non-classe"
tags: 
  - "news"
coverImage: "darktable26.jpeg"
---

À la veille de Noël, nous somme heureux de vous annoncer que la nouvelle version majeure de darktable est enfin disponible.

La version 2.4 laisse donc la place à la 2.6 qui comporte plus de 1600 modifications (sur les projets darktable et rawspeed), plus de 260 de demande d'intégration et plus de 250 rapports clôturés. La mise à jour du manuel devrait arriver prochainement.

[L'article de présentation sur linuxfr.org](https://linuxfr.org/news/darktable-2-6-0)

## Gros changements

- nouveau module de retouche permettant des changements basés sur les couche d'images
- nouveau module filmic qui remplace celui pour la courbe de base et celui pour les ombres et hautes lumières
- nouveau modules pour gérer les copies dans la chambre noire avec possibilité d'ajouter des titres, créer des copies standard ou vierges, effacer des copier ou comparer rapidement avec une copie
- nouvelles commandes logarithmiques pour la courbe de tonalité
-  nouveau mode pour le module profilé incassable
- rajoute d'un aperçu du masque pour ajuster la taille et la dureté avant de les placer
- rendre possible de changer la surface recadrée dans le module de correction de perspective
- le flou du masque a été complété par un filtre guidé pour l'affiner (cela fonctionne sur les espaces couleurs RVB et Lab).
- le module de balance des couleurs a deux nouveaux modes basés sur ProPhotoRGB et HSL
- support expérimental pour architecture PPC64 (le support OpenCL doit être désactivé avec `-DUSE_OPENCL=OFF`)

## Nouvelles fonctionnalités et modifications

- la recherche à partir de la vue de la carte est maintenant corrigée
- refonte visuelle de la table lumineuse (étiquette couleur, type d'image, copie locale)
- une option permet d'afficher certaines informations sur l'image directement sur le pouce
- ajouter des barres de défilement optionnelles sur la table lumineuse, ou sur la table lumineuse et la chambre noire
- permettre à chaque masque du module de clonage d'avoir l'opacité ajustée
- le module d'importation de lightroom prend en charge le créateur, les droits, le titre, la description et les informations de l'éditeur.
- amélioration du support TurboPrint en affichant le dialogue avec toutes les options possibles (l'annulation de l'impression sera corrigée dans TurboPrint 2.47)
- nouveau filtre de tri basé sur l'aspect de l'image
- nouveau filtre de tri basé sur la vitesse d'obturation de l'image
- nouveau filtre de tri basé sur le groupe de l'image
- nouveau filtre de tri basé sur un ordre de tri personnalisé (glisser-déposer sur la vue de la table lumineuse)
- collection en fonction de l'état de la copie locale
- le numéro de l'image de groupe affiché sur le module de collecte
- nouveau niveau de zoom à 50% ; 400%, 800% et 1600%
- meilleur support pour le monochrome RAW
- ajout d'une aide contextuelle pointant vers le manuel de la table noire
- meilleur support du copier/coller pour les instances multiples
- ajout du support pour renommer les instances du module
- ajout d'un réglage basé sur la fréquence pour le module de débruitage RAW
- ajout d'un réglage en fonction de la fréquence pour le module de profil de réduction du bruit
- tout les widgets devraient être accessibles via CSS maintenant
- ajout de la prise en charge de la configuration de la mise en page des modules
- différente façon de sélectionner les balises hiérarchiques dans le module de collecte (seulement la balise parent réelle, tous les enfants ou la balise parent et les enfants)
- meilleure gestion des images groupées en permettant de paramétrer les étoiles, l'étiquette couleur pour l'ensemble du groupe
- permettre d'appliquer un preset à une nouvelle instance de module en utilisant le clic du milieu
- nouveau script pour migrer la collection de Capture One Pro

## Corrections de bogues

- Correction du comportement des sélecteurs de couleurs dans tout les modules
- Correction duchangement d'outils de liquéfaction
- Beaucoup d'autres bogues ont été corrigés

## Lua

- Aucuns changements

## Modification des dépendances (pour la compilation)

- CMake 3.4 est maintenant requis
- Pour compiler darktable, vous avez maintenant besoin d'au moins gcc-5.0+/clang-3.9+.
- La version Minimal Clang est passée de 3.4+ à 3.9+.
- Il est conseillé aux empaqueteurs de passer -DRAWSPEED_ENABLE_LTO=ON à CMake pour activer la LTO partielle.

## Changements dans RawSpeed

- Les raws GoPro '.GPR' sont maintenant supportés par le nouveau décompresseur parallèle rapide'VC-5'.La nouvelle compression brute de Panasonic ('.RW2', GH5s, G9 cameras) est maintenant supportée via le nouveau décompresseur rapide et parallèle'Panasonic V5'.
- Le vieux décompresseur brut de Panasonic (aussi '.RW2') a été réécrit, re-parallélisé.
- Le décompresseur de la phase 1 ('.IIQ') a été parallélisé.
- Le support brut Nikon NEF'lossy after split' a été récupéré
- La correction du quadrant de la phase un ('.IIQ') est maintenant prise en charge.
- Support brut Olympus haute résolution (non compressé)
- Des lots et des lots et des lots d'entretien, d'assainissement, de nettoyage, de petites réécritures/refactoring.
- **REMARQUE : Les raws Canon '.CR3' ne sont PAS encore supportés.**

## Support de boîtiers, comparé à la 2.4.0

### Support de base

- Canon EOS 1500D
- Canon EOS 2000D
- Canon EOS Rebel T7
- Canon EOS 3000D
- Canon EOS 4000D
- Canon EOS Rebel T100
- Canon EOS 5D Mark IV (sRaw1, sRaw2)
- Canon EOS 5DS (sRaw1, sRaw2)
- Canon EOS 5DS R (sRaw1, sRaw2)
- Canon PowerShot G1 X Mark III
- Fujifilm X-A5
- Fujifilm X-H1 (compressed)
- Fujifilm X-T100
- Fujifilm X-T3 (compressed)
- GoPro FUSION (dng)
- GoPro HERO5 Black (dng)
- GoPro HERO6 Black (dng)
- GoPro HERO7 Black (dng)
- Hasselblad CFV\-50
- Hasselblad H5D\-40
- Hasselblad H5D\-50c
- Kodak DCS Pro 14nx
- Kodak DCS520C
- Kodak DCS760C
- Kodak EOS DCS 3
- Nikon COOLPIX P1000 (12bit-uncompressed)
- Nikon D2Xs (12bit-compressed, 12bit-uncompressed)
- Nikon D3500 (12bit-compressed)
- Nikon Z 6 (except uncompressed raws)
- Nikon Z 7 (except 14-bit uncompressed raw)
- Olympus E-PL8
- Olympus E-PL9
- Olympus SH\-2
- Panasonic DC\-FZ80 (4:3)
- Panasonic DC\-G9 (4:3)
- Panasonic DC\-GF9 (4:3)
- Panasonic DC\-GX800 (4:3)
- Panasonic DC\-GX850 (4:3)
- Panasonic DC\-GH5S (4:3, 3:2, 16:9, 1:1)
- Panasonic DC\-GX9 (4:3)
- Panasonic DC\-LX100M2 (4:3, 1:1, 16:9, 3:2)
- Panasonic DC\-TZ200 (3:2)
- Panasonic DC\-TZ202 (3:2)
- Panasonic DMC\-FZ2000 (3:2)
- Panasonic DMC\-FZ2500 (3:2)
- Panasonic DMC\-FZ35 (3:2, 16:9)
- Panasonic DMC\-FZ38 (3:2, 16:9)
- Panasonic DMC\-GX7MK2 (4:3)
- Panasonic DMC\-ZS100 (3:2)
- Paralenz Dive Camera (chdk)
- Pentax 645Z
- Pentax K-1 Mark II
- Pentax KP
- Phase One P65+
- Sjcam SJ6 LEGEND (chdk-b, chdk-c)
- Sony DSC\-HX99
- Sony DSC\-RX0
- Sony DSC\-RX100M5A
- Sony DSC\-RX10M4
- Sony DSC\-RX1RM2
- Sony ILCE\-7M3

### Profils Balance des blancs

- Canon EOS M100
- Fujifilm X-T3
- Leaf Credo 40
- Nikon D3400
- Nikon D5600
- Nikon D7500
- Nikon D850
- Nikon Z 6
- Olympus E-M10 Mark III
- Olympus E-M1MarkII
- Panasonic DC\-G9
- Panasonic DC\-GX9
- Panasonic DMC\-FZ300
- Sony DSC\-RX0
- Sony DSC\-RX100M5
- Sony DSC\-RX100M5A
- Sony DSC\-RX10M3
- Sony DSC\-RX10M4
- Sony DSC\-RX1RM2
- Sony ILCE\-6500
- Sony ILCE\-7M3
- Sony ILCE\-7RM3

### Profils de bruit

- Canon EOS 200D
- Canon EOS Kiss X9
- Canon EOS Rebel SL2
- Canon EOS 750D
- Canon EOS Kiss X8i
- Canon EOS Rebel T6i
- Canon EOS 760D
- Canon EOS 8000D
- Canon EOS Rebel T6s
- Canon EOS 77D
- Canon EOS 9000D
- Canon EOS 800D
- Canon EOS Kiss X9i
- Canon EOS Rebel T7i
- Canon EOS M100
- Canon EOS M6
- Canon PowerShot G1 X Mark II
- Canon PowerShot G1 X Mark III
- Canon PowerShot G9 X
- Fujifilm X-A5
- Fujifilm X-E3
- Fujifilm X-T3
- Fujifilm X100F
- Nikon 1 AW1
- Nikon 1 J3
- Nikon COOLPIX B700
- Nikon D5600
- Nikon D7500
- Nikon D850
- Olympus E-M10 Mark III
- Olympus TG\-5
- Panasonic DC\-G9
- Panasonic DC\-GX9
- Panasonic DMC\-FZ35
- Panasonic DMC\-FZ38
- Panasonic DMC\-GF6
- Panasonic DMC\-LX10
- Panasonic DMC\-LX15
- Panasonic DMC\-LX9
- Panasonic DMC\-TZ70
- Panasonic DMC\-TZ71
- Panasonic DMC\-ZS50
- Pentax K-01
- Pentax KP
- Samsung NX1
- Sony DSC\-RX100M4
- Sony DSC\-RX10M3
- Sony ILCE\-7M3

## Traductions

- Catalan
- Dutch
- Finnish
- French
- German
- Hungarian
- Japanese
- Norwegian Bokmål
- Portuguese
- Russian
- Slovenian

Source: [https://github.com/darktable-org/darktable/releases/tag/release-2.6.0](https://github.com/darktable-org/darktable/releases/tag/release-2.6.0)

## Soutenez-nous

En choisissant de nous faire un don via l'une de ces 3 plateformes vous contribuez à la pérennité du site, du forum et au développement de darktable

Liberapay Tipeee Patreon
