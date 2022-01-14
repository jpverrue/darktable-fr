+++
title = "Installation Linux"
reward = false
postDate = false
readingTime = false
[menu.main]
  weight = 2
  parent = "documentation"
+++

\[su\_note note\_color="#e6eaec"\]darktable est disponible uniquement pour les systèmes Linux, BSD, Mac et, depuis peu, pour Windows.. Voici quelques procédures d'installation selon différents systèmes d'exploitation :\[/su\_note\]

\[su\_service title="Version GNU/Linux et BSD" icon="icon: linux"\]Cliquez ci-dessous sur l'onglet correspondant à votre distribution GNU/Linux ou BSD pour connaître la procédure d'installation.\[/su\_service\]

\[su\_tabs vertical="yes"\] \[su\_tab title="Ubuntu / Linux Mint / elementary OS"\] `sudo apt-get install darktable`

Il existe aussi un dépôt tiers [ici](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable)\[/su\_tab\] \[su\_tab title="Debian"\] `sudo apt-get install darktable` Une version plus récente est peut être présente sur les backports ou sur ce dépôt tiers [ici](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable)\[/su\_tab\] \[su\_tab title="Fedora / Centos"\] `dnf install darktable`

Il existe aussi un dépôt tiers [ici](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable)\[/su\_tab\] \[su\_tab title="openSUSE"\] Dépôt pour OpenSUSE [ici](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable)\[/su\_tab\] \[su\_tab title="Arch Linux / Manjaro / Frugalware"\] `pacman -S darktable` \[/su\_tab\] \[su\_tab title="Solus"\] `sudo eopkg install darktable` \[/su\_tab\] \[su\_tab title="Gentoo / Funtoo"\] `emerge darktable` \[/su\_tab\] \[su\_tab title="BSD"\] `pkg_add -r darktable` \[/su\_tab\] \[su\_tab title="Paquet Snap"\] `sudo snap install darktabl` \[/su\_tab\] \[su\_tab title="Paquet Flatpak"\] `flatpak install --from https://flathub.org/repo/appstream/org.darktable.Darktable.flatpakref` \[/su\_tab\] \[su\_tab title="À partir des sources"\] Sous linux, si vous voulez une version récente, il vous faut créer darktable à partir des sources.

Pour commencer, il faut aller télécharger le tarball (l'archive) des sources [ici !](https://github.com/darktable-org/darktable/releases/) (veillez à bien prendre le fichier darktable-2.0.1.tar.xz) et vérifier que vous avez toutes les dépendances nécessairesau fonctionnement du programme.

`libsqlite3, libjpeg, libpng, gtk+-2, cairo, lcms2, exiv2, tiff, curl, gphoto2, dbus-glib, gnome-keyring, fop, openexr, libsoup2.4`

Ensuite ouvrez un terminal et mettez-vous à l'endroit où vous avez mis le tarball (généralement dans téléchargement).

Puis entrez les commandes suivantes (remplacer X.X.X par la version actuelle) : `tar xvf darktable-X.X.X.tar.xz && cd darktable-X.X.X su (votre mot de passe root va vous être demandé) ./build.sh ln -s /opt/darktable/share/applications/darktable.desktop /usr/share/applications/darktable.desktop`

Plus d'informations sur la compilation de darktable sur le [wiki](http://redmine.darktable.org/projects/darktable/wiki/Building_darktable_20) et sur le forum !

Si vous utilisez Ubuntu ou l'une des variantes (ou une distribution basée sur Ubuntu comme Linux Mint ou elementary OS), vous pouvez consulter [le fichier de PDF de jpg](https://docs.google.com/document/d/1CjnyPGp9uD5ETUER6w129hUplmejRpkrjZXf_xeND80/edit?usp=sharing) qui explique pas à pas comment compiler la version git de darktable. \[/su\_tab\] \[/su\_tabs\]

D'autres procédures plus détaillées d'installation sont disponibles sur [la page du site officiel de Darktable](http://www.darktable.org/install/).

\[su\_button url="http://darktable.fr/apprendre/" icon="icon: graduation-cap"\]Débuter maintenant votre apprentissage de darktable\[/su\_button\]
