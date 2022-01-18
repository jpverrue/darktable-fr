+++
title = "Installation Linux"
reward = false
postDate = false
readingTime = false
[menu.main]
  weight = 2
  parent = "documentation"
+++

> darktable est disponible uniquement pour les systèmes Linux, BSD, Mac et, depuis peu, pour Windows.. Voici quelques procédures d'installation selon différents systèmes d'exploitation :

## Version GNU/Linux et BSD

### Ubuntu et systèmes dérivés
L’installation de la version correspondante à votre version installée d’Ubuntu ou d’un de ses dérivés, se fait avec la commande :

`sudo apt-get install darktable`

Cependant, darktable évoluant beaucoup plus vite que les versions d’OS, particulièrement si vous utilisez une version “LTS” du système, Vous souhaiterez peut-être obtenir la dernière version de darktable.
Pour cela, tournez-vous vers le dépôt [OBS](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable).

### Debian

L’installation de la version correspondante à votre version installée de Debian, se fait avec la commande :

`sudo apt-get install darktable`

Cependant, darktable évoluant beaucoup plus vite que les versions d’OS, Vous souhaiterez peut-être obtenir la dernière version de darktable.
Deux solutions s’offrent à vous :

* Une version plus récente est probablement présente sur les backports.
* La version la plus récente de darktable pour Debian est systématiquement disponible sur [OBS](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable).

### Fedora et systèmes dérivés

L’installation de la version correspondante à votre version installée de Fedora ou d’un de ses dérivés, se fait avec la commande :

`dnf install darktable`

Cependant, darktable évoluant beaucoup plus vite que les versions d’OS, particulièrement si vous utilisez une version “LTS” du système, Vous souhaiterez peut-être obtenir la dernière version de darktable. Pour cela utilisez le dépôt tiers [OBS](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable).

### openSUSE
Le dépôt pour les sysèmes OpenSUSE Leap ou Tumbleweed est [ICI](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable)

### Arch Linux et systèmes dérivés
L’installation de la version correspondante à votre version installée de Arch Linux ou d’un de ses dérivés, se fait avec la commande :

`pacman -S darktable`

### Solus
L’installation de la version correspondante à votre version installée de Solus, se fait avec la commande :
`sudo eopkg install darktable`

### Gentoo et systèmes dérivés
L’installation de la version correspondante à votre version installée de Gentoo ou d’un de ses dérivés, se fait avec la commande :

`emerge darktable`

### BSD
L’installation de la version correspondante à votre version installée de BSD, se fait avec la commande :

`pkg_add -r darktable`

### Paquet Snap
L’utilisation des paquets SNAP est vivement déconseillée ! Néanmoins, si vous y tenez vraiment, utilisez la commande :

`sudo snap install darktable`

### Paquet Flatpak
L’utilisation des paquets Flatpack est vivement déconseillée ! Néanmoins, si vous y tenez vraiment, utilisez la commande :

`flatpak install --from https://flathub.org/repo/appstream/org.darktable.Darktable.flatpakref`

### Nightly builds
Les paquets d’installation de la version de développement de darktable, sont générés automatiquement toutes les nuits pour les OS : Ubuntu et dérivés, Debian et dérivés et Opensuse. Ils sont disponibles sur [OBS](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable).

### À partir des sources
Enfin, il vous est possible de créer vous-même darktable à partir des sources. Pour cela suivez les instructions disponibles sur [Github](https://github.com/darktable-org/darktable#building).


[ Débutez maintenant votre apprentissage de darktable](/apprendre)
