---
title: "Sortie de darktable 3.8.1"
date: "2022-02-11"
featured: true
pinned: true
categories: 
  - "actualites"
  - "featured"
tags: 
  - "featured"
coverImage: "chartres_hu149bf1b2e889ca72934ff96c2502ff19_586279_960x0_resize_q75_box.jpg"
---

Posté le ven. 11 février 2022 par [Pascal Obry](https://www.darktable.org/author/pascal-obry/)

Nous sommes fiers d'annoncer la nouvelle version de darktable, 3.8.1 !

La version de github est ici : [https://github.com/darktable-org/darktable/releases/tag/release-3.8.1](https://github.com/darktable-org/darktable/releases/tag/release-3.8.1) .

Comme toujours, veuillez ne pas utiliser l'archive tar générée automatiquement fournie par github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```bash
$ sha256sum darktable-3.8.1.tar.xz
81ee069054dbde580749b2d3a81cda01b7d169a82ba48731823f3ea560b2bef6  darktable-3.8.1.tar.xz
$ sha256sum darktable-3.8.1.dmg
9ca2bb86af90e76aeb67e0e12e167dc35d8a022ee79d66a1e08c5b0345d123a8  darktable-3.8.1.dmg
$ sha256sum darktable-3.8.1-win64.exe
9ed13cc0972c4473c7e5ac69b3393e6636ba9e2a2cf8b8b9e2a51882288235d1  darktable-3.8.1-win64.exe
```

Lors de la mise à jour à partir de la série 3.6.x actuellement stable, veuillez garder à l'esprit que vos modifications seront conservées pendant ce processus, mais la nouvelle bibliothèque et la configuration ne seront plus utilisables avec 3.6.x.

Il est fortement conseillé de faire d'abord une sauvegarde.

> Remarque importante : pour vous assurer que darktable peut continuer à prendre en charge le format de fichier brut pour votre appareil photo, _veuillez_ lire [cet article](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) sur comment/quels échantillons bruts vous pouvez contribuer pour vous assurer que nous avons l' _ensemble complet_ d'échantillons bruts pour votre appareil photo sous licence CC0 !

Depuis darktable 3.8.0 :

- Plus de 160 commits sur darktable+rawspeed
- 75 pull requests traitées
- 55 numéros clos

## Les changements principaux

- Deux nouvelles langues sont désormais disponibles pour la documentation : l'espagnol et le néerlandais. Cela porte le nombre total de traductions à six. Merci à tous les traducteurs pour leur travail acharné.

## Autres nouvelles fonctionnalités et modifications

- Accélérez l'outil de correction de la retouche en utilisant un meilleur parallélisme.
- Ajoutez une nouvelle variable $(DARKTABLE\_VERSION).

## Corrections de bogues

- Correction des points de contrôle et de plume pour les formes de tracé et de pinceau lors de l'édition à l'aide d'un zoom > 200 %. L'édition est maintenant fluide et ne saute plus lorsque la souris est déplacée.
- Sur la vue de la table lumineuse, fixez Maj-clic lors de la sélection d'une plage - au moins une image doit d'abord être sélectionnée.
- Correction de l'expansion de certaines variables sous Windows.
- Correction du rendu SVG en calculant la dimension appropriée dans le module de filigrane avec libsvg 2.52.
- Correction de l'impression lorsque le module d'exportation est réglé sur le mode échelle. Cela était dû à un bogue dans l'interaction entre l'exportation et l'impression.
- Correction de l'affichage de la disposition de l'image du module d'impression lors de l'utilisation de l'unité en pouces.
- Correction de la bordure jaune pour les images groupées sélectionnées.
- Correction de certains problèmes d'exportation de balises.
- Correction d'un plantage sous Windows lors de l'importation à partir d'un dossier contenant des caractères spéciaux.
- Correction de l'affichage des vignettes au survol de la souris lorsque vous quittez la table lumineuse par le bas - assurez-vous que la vignette cesse d'être mise en surbrillance.
- Supprimez l'indication de double-clic dans le module de recadrage pour valider les paramètres. Cette fonctionnalité a été supprimée dans darktable 3.8.0.
- Meilleure mise en page pour l'étoile et les icônes rejetées.
- Résoudre certains problèmes d'actualisation dans le menu des superpositions de guide - assurez-vous que la fenêtre contextuelle affiche les paramètres actuels après qu'ils ont été modifiés via un raccourci clavier.
- Corrigez les lignes de guidage dans le module de rotation et de perspective - assurez-vous que les guides sont affichés uniquement dans la zone recadrée.
- Correction de l'export Piwigo pour la nouvelle version de Piwigo qui utilise désormais un salon pour les nouvelles images. Nous le vidons maintenant pour nous assurer que les images sont affectées à leur album correspondant.
- Correction de la gestion des sources cercle/ellipse dans le module de retouche. Les formes peuvent maintenant être déplacées immédiatement après les avoir placées par glisser-déposer.
- Correction d'un bug dans la rotation et la perspective qui empêchait la suppression de la dernière ligne tracée manuellement.
- Correction de plusieurs problèmes dans le module de marquage. Certaines interactions de l'interface utilisateur ont été retravaillées pour être plus proches de ce à quoi un utilisateur pourrait s'attendre. En outre, de nouvelles clés ont été ajoutées : shift-enterattachez la balise sélectionnée, réinitialisez l'entrée et donnez-lui le focus. shift-leftRéduire l'arborescence entière .
- Correction de plusieurs problèmes de glisser-déposer sur la table lumineuse qui provoquaient des plantages.
- Correction d'un plantage possible avec une très grande mise à l'échelle à l'exportation.
- Retravailler les éléments d'historique sur les infobulles des vignettes.
- Retravailler l'interface graphique pour le copier/coller des éléments d'historique. L'icône d'état marche/arrêt a été supprimée des étiquettes et remplacée par une colonne spécifique « marche/arrêt ».
- Correction de certains problèmes de dématriçage spécifiques aux pilotes AMD OpenCL.
- Correction d'un plantage possible dans le module de styles pour les noms de style contenant une barre oblique.
- Ajouter une option pour saisir automatiquement le nouveau nom d'instance de module lors de la duplication d'un préréglage.
- Correction de la mise à jour du graphique Filmic RGB lorsqu'elle est utilisée dans le panneau d'accès rapide.
- Restaurer le raccourci pour créer une copie vierge dans la vue table lumineuse.
- Autoriser les préréglages du module de balisage à ajouter les balises au lieu de les remplacer.
- Correction de l'info-bulle sur les curseurs de saturation des tons moyens par rapport à la luminance extrême dans Filmic RGB.
- Correction de l'ajustement du recadrage dans le module de rotation et de perspective lorsque le sous-échantillonnage de l'aperçu est actif. Les mouvements ont été amplifiés, ce qui a rendu l'ajustement plus difficile et l'emplacement cliqué n'était pas constant lors du déplacement de la zone de recadrage.
- Correction de l'écriture des métadonnées XMP au format AVIF.
- Correction de l'importation à partir de partages SMB montés à l'aide de gvfs.
- Correction d'un éventuel changement de couleur lors de l'activation de la correction de l'objectif sur une image monochrome.
- Correction de la substitution de variable $(RATING\_ICONS) - affiche désormais un "X" lorsque la note est de 0 au lieu d'une chaîne vide.
- Ajoutez quelques substitutions de variables manquantes dans la liste affichée.
- Correction du bouton de réinitialisation dans l'éditeur de métadonnées. Les entrées de métadonnées ont été correctement supprimées des images sélectionnées, mais l'affichage du module n'a pas été actualisé.
- Correction de l'activation des modules de traitement à partir d'un raccourci. Le module n'est plus mis au point lorsqu'il est activé, ce qui correspond au comportement "clic".
- Correction de la sélection automatique des onglets lors de l'ouverture des préférences dans des langues autres que l'anglais.
- Améliorez la gestion des illuminants DNG inconnus.
- Correction de l'exportation de haute qualité lorsque la taille d'exportation est spécifiée "par échelle".
- Correction de certains raccourcis ignorés lorsqu'ils sont appliqués à un widget dans une boîte de dialogue contextuelle inactive ou non ciblée.

## Notes

- Nous affichons maintenant un grand message rouge pour les caméras avec des échantillons manquants. Les caméras qui ont été supprimées dans la version 3.8.0 ont été ajoutées à darktable pendant une courte période.
    
    Si vous voyez un tel message, cela signifie qu'il manque des échantillons à votre appareil photo. Si vous ne faites rien, le support sera définitivement supprimé dans la prochaine version majeure de darktable.
    
    Lisez [cet article](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) pour plus d'informations.
    
    Les échantillons doivent être téléchargés ici [https://raw.pixls.us/](https://raw.pixls.us/) .

### Profils de bruit

- Canon EOS D60
- Samsung NX1000

### Soutien suspendu

Aucun échantillon sur raw.pixls.us

- Canon EOS M2
- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm FinePix HS50EXR
- Fujifilm FinePix S6000fd
- Fujifilm FinePix S9600fd
- Fujifilm IS-1
- GoPro FUSION
- Kodak EasyShare Z980
- Feuille Aptus-II 5(LI300059)/Mamiya 645 AFD
- Feuille je crois 60
- Feuille je crois 80
- Leica D-LUX 6
- Minolta DiMAGE 5
- Nikon 1 J4
- Nikon 1 S1
- Nikon Coolpix P7700
- Nikon D1H
- Nikon D2H
- Nikon D3S
- Olympe E-10
- Olympe SP320
- Olympus SP570UZ
- Panasonic DMC-FX150
- Panasonic DMC-G2
- Pentax K200D
- Pentax K2000
- Pentax Q10
- Phase un IQ250
- Samsung GX10
- Samsung GX20
- Samsung NX5
- Samsung NX10
- Samsung NX11
- Samsung NX20
- Samsung NX2000
- Samsung EK-GN120
- Samsung SM-G920F
- Samsung SM-G935F
- Sinar Hy6/ Sinarback eXact
- Sony DSLR-A380
- Sony DSLR-A560
- ST Micro STV680

## Traductions

- portugais brésilien
- Chinois - Chine
- néerlandais
- espéranto
- Espagnol européen
- finlandais
- français
- allemand
- hébreu
- hongrois
- italien
- Japonais
- polonais
- slovène
- ukrainien

### Les versions

Pour les différents systèmes d'exploitation :

- [darktable-3.8.1-win64.exe](https://github.com/darktable-org/darktable/releases/download/release-3.8.1/darktable-3.8.1-win64.exe) 113 Mo
- [darktable-3.8.1.dmg](https://github.com/darktable-org/darktable/releases/download/release-3.8.1/darktable-3.8.1.dmg) 92 Mo
- [darktable-3.8.1.tar.xz](https://github.com/darktable-org/darktable/releases/download/release-3.8.1/darktable-3.8.1.tar.xz) 5,26 Mo
- [darktable-3.8.1.tar.xz.asc](https://github.com/darktable-org/darktable/releases/download/release-3.8.1/darktable-3.8.1.tar.xz.asc) 195 octets
- [Source code (zip)](https://github.com/darktable-org/darktable/archive/refs/tags/release-3.8.1.zip)
- [Source code (tar.gz)](https://github.com/darktable-org/darktable/archive/refs/tags/release-3.8.1.tar.gz)
- pour les distributions Linux, elles apparaîtrons sur :  [https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable)
