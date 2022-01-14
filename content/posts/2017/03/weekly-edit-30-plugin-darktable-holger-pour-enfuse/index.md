---
title: "Weekly Edit 31: Plugin darktable Holger pour Enfuse"
date: "2017-03-11"
categories: 
  - "tutoriels"
tags: 
  - "durgin"
  - "tutoriel"
---

Dans ce tuto, Harry Durgin vous présente l'utilisation du plugin d'Holger pour utiliser enfuse sous darktable. Ce plugin permet de gagner du temps pour faire du HDR ou du focus stacking. C'est un script lua qui permet l'utilisation d'align\_image\_stack et enfuse. Bon visionnage !

https://www.youtube.com/watch?v=H3q\_LqVp00Q

Source: [http://weeklyedit.com/holgers-lua-plugin-enfuse/](http://weeklyedit.com/holgers-lua-plugin-enfuse/)

### Procédure d'installation du plugin tirée du README

Télécharger le plugin avec l'un de ces deux liens:

[enfuse\_pro-2.1beta1.tar @multimedia4linux.de](http://www.multimedia4linux.de/images/darktable/plugins/enfuse_pro-2.1beta1.tar) [enfuse\_pro-2.1beta1.tar @weeklyedit.com](https://drive.google.com/open?id=0B7mIPRZEcQpAbXZYSURZc00teGc)

Sous ubuntu, il faudra installer des paquets nécessaires pour l'utilisation de lua

> sudo apt-get update sudo apt-get install liblua5.2-0 liblua5.2-dev lua5.2 lua5.2-doc

Le programme align\_image\_stack (contenu dans hugin-tools), enfuse et exiftool seront utiles pour générer les images HDR et DFF (Focus Stacking)

> sudo apt-get install hugin-tools enfuse libimage-exiftool-perl

Harry conseille aussi l'utilisation d'enfuse dans sa version récente,  la 4.2

> sudo add-apt-repository ppa:hugin/hugin-builds sudo apt-get update sudo apt-get upgrade

Si non présents, créer les dossiers suivants:

> ~/.config/darktable/lua/contrib ~/.config/darktable/lua/en\_DE/LC\_MESSAGES

Copier ensuite le script **lua enfuse\_pro.lua** dans

> ~/.config/darktable/lua/contrib

Pour que darktable démarre le script, il faudra éditer le fichier ~/.config/darktable/luarc pour y ajouter cette ligne:

> require "contrib/enfuse\_pro"

Démarrer darktable et vous devriez avoir "fusion to hdr or dff image" devrait apparaître les options d'exportation.
