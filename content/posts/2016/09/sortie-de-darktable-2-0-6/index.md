---
title: "Sortie de darktable 2.0.6"
date: "2016-09-05"
categories: 
  - "actualites"
tags: 
  - "news"
---

Nouvelle version mineure: 2.0.6

## Changements par rapport à la 2.0.5

_Désolé par avance pour certains traductions approximatives..._

##### Nouvelles fonctionnalités

- format d'écriture Jpeg: utilisation de libexiv2 pour écrire les métadonnées, comme avec les autres formats
- Acceptation des fichiers raw non-mosaïquées avec 4 canaux, en assumant qu'ils sont RGBA (canal alpha ignoré)

##### Corrections de bug

- Une fois encore, correction pour une autre régression causé par le thème gtk...
- OpenCL: abandon des matériels CPU basés sur OpenCL. Corrections des crashs au démarrage avec implantations cassées d'OpenCL comme pocl.
- darktable-cli: ne tente plus d'afficher l'affichage graphique, il n'est pas nécessaire.
- Rawspeed: NikonDecoder: stoppe les entrées d'appareil génériques. Correction d'une multitude de problèmes de chargement de raw Nikon.
- OpenCL: correction de la gestion des bordures dans le module recadrer & pivoter
- Hotpixels iop: il fonctionne maintenant pour X-Trans
- Clipping IOP: longueur d’échelle du recadrement gris avec le niveau de zoom
- Une correction de plus pour la lecture des noms d'objectifs Canon depuis l'exif
- Correction du pattern Bayer pour l'Olympus SP570UZ
- Correction des erreurs internes de compilation: concerne Perl's @INC contains '.'

##### Spport de base

- Canon EOS-1D X Mark II
- Canon EOS 1300D
- Canon EOS Kiss X80
- Canon EOS Rebel T6
- Canon EOS M10
- Canon PowerShot G7 X Mark II
- Canon PowerShot G9 X
- Fujifilm X-T2
- GITUP GIT2 action camera
- Panasonic DMC-FZ18 (16:9, 3:2)
- Panasonic DMC-FZ50 (16:9, 3:2)
- Pentax K-1
- Sony DSLR-A380
- Sony ILCE-6300
- Nikon D500
- D'autres corrections de niveaux de blanc pour des appareils Nikon (en particulier, la plupart pour les raw 12-bit et non-compressés)

##### Préréglages de balance des blancs

- Canon EOS-1D X Mark II
- Canon EOS 1300D
- Canon EOS Kiss X80
- Canon EOS Rebel T6
- Canon EOS M10
- Canon PowerShot G7 X Mark II
- Fujifilm X-T10
- Sony ILCE-6300

##### Mise à jour des traductions

- Slovaque

Source: [https://github.com/darktable-org/darktable/releases/tag/release-2.0.6](https://github.com/darktable-org/darktable/releases/tag/release-2.0.6)
