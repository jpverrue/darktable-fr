---
title: "Installer Darktable 2.2 sous Windows 10 64bits"
date: "2017-01-26"
series:
  - "Tutoriels de Julien Pons"
categories: 
  - "tutoriels"
tags:
  - "Julien Pons"
  - "tutoriel"
---

Voici une vidéo que l'un de nos membres [nous a fait découvrir sur le forum](https://darktable.fr/forum/showthread.php?tid=1592). Dans cette vidéo Julien Pons montre qu'il est possible d'installer la dernière version stable de darktable sous Windows 10 64bits grâce à un sous-système Ubuntu 16.04. Nous avons ici peut être une bonne possibilité à ceux qui ne veulent pas migrer sur Linux ou Mac de pouvoir utiliser darktable.

{{< youtube PebDro7jeKw >}}

Rappel de la procédure:

> Depuis l'Anniversary Update, Windows est capable de faire tourner un sous-système Ubuntu, et donc d'executer des binaires Linux avec des performances 95/99% proches d'un OS bootant sans VM.
> 
> Résumé du tuto en texte :
> 
> Prérequis :
> 
> - avoir une version de Windows 10 64bits en version 14393 mini - activer le mode développeur - activier la fonctionnalité sous système Linux
> 
> En ligne de commande Windows taper :
> 
> lxrun /install
> 
> Avant de mettre à jour 14.04 vers 16.04, entrez les 3 commandes suivantes :
> 
> sudo -S apt-mark hold sudo sudo -S apt-mark hold procps sudo -S apt-mark hold strace
> 
> Pour mettre à jour 14.04 vers 16.04
> 
> sudo do-release-upgrade -f DistUpgradeViewNonInteractive -d
> 
> Si l'installation s'interromp : Si nécessaire taper : sudo dpkg --configure -a après avoir interrompu l'install avec CTRL + C
> 
> Installer et lancer le serveur X pour Windows (Xming) :
> 
> [https://sourceforge.net/projects/xming/](https://sourceforge.net/projects/xming/)
> 
> Dans le bash, exporter la variable d'environnement DISPLAY pour que le sous système puisse communiquer avec X :
> 
> export DISPLAY=:0
> 
> Ensuite ajouter le dépôt Darktable
> 
> sudo add-apt-repository ppa:pmjdebruijn/darktable-release
> 
> Mettre à jour les paquets puis installer Darktable
> 
> sudo apt-get update sudo apt-get install darktable
> 
> Lancez Darktable en tapant simplement :
> 
> darktable
