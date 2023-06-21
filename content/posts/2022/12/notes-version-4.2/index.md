---
title: "Version 4.2.0"
aliases:
  - "Darktable-4-2-0"
date: "2022-09-20"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"

coverImage: "darktable-4-2.0.png"
---
La version 4.2.0 est sortie aujourd'hui.

En voici la version française traduite avec l'aide de Deepl translator.

Les liens pour le téléchargement sont disponibles sur [darktable.org/install/](https://www.darktable.org/install/)
___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.2.0 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.2.0](https://github.com/darktable-org/darktable/releases/tag/release-4.2.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```
$ sha256sum darktable-4.2.0.tar.xz
18b0917fdfe9b09f66c279a681cc3bd52894a566852bbf04b2e179ecfdb11af9  darktable-4.2.0.tar.xz
$ sha256sum darktable-4.2.0_x86_64.dmg
89308cb7222ec0d0b539771dd90284e98b35bae4b53c8f3aa1b2feb861536b82  darktable-4.2.0_x86_64.dmg
$ sha256sum darktable-4.2.0_arm64.dmg
7cbc03cc0e9a4a1769e4321815ed99384de8c063990eb5d746ffbd7599e32193  darktable-4.2.0_arm64.dmg
$ sha256sum darktable-4.2.0-win64.exe
748e617d36f810890fcc7829fdf0e9999da2906b20293a2ac919808f80709e27  darktable-4.2.0-win64.exe
```

Lors de la mise à jour à partir de la série stable 4.0.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus, mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec les versions antérieures (4.0.x, 3.x.x, etc).

Il est fortement conseillé de faire d'abord une sauvegarde.

**Note importante : pour s'assurer que darktable puisse continuer à supporter le format de fichier brut pour votre appareil photo, *s'il vous plaît* lisez [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) pour savoir comment et avec quels fichiers raw sous licence CC0 vous pouvez contribuer, afin de vous assurer que nous ayons l'ensemble *complet* d'échantillons bruts pour votre appareil photo !**

Depuis la précédente version darktable 4.0 :

- 1411 commits à darktable + rawspeed
- 409 demandes de pull traitées
- 60 problèmes fermés

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable 4.2. Ces fonctionnalités sont décrites plus en détail dans le manuel d'utilisation et dans l'article de blog qui l'accompagne (en anglais sur le site [darktable.org](https://darktable.org/blog).

- Nouveau module de transformation de l'affichage : "sigmoïde" qui peut être utilisé en remplacement des modules "filmique" et "courbe de base".

- Deux nouveaux algorithmes sont fournis dans le module de "reconstruction des hautes lumières" : "peinture opposée" et "segmentation". L'algorithme "peinture opposée" s'est avéré très stable et fournit de bons résultats dans de nombreuses images, il remplace donc "tronquer les hautes lumières" comme nouvel algorithme par défaut.

- Le pixelpipe utilisé pour l'affichage de l'image dans la vue de la chambre noire a été retravaillé afin de pouvoir être utilisé ailleurs (vue de la chambre noire, deuxième fenêtre d'affichage de la cahmbre noire, gestionnaire de clônes, aperçu du style, routine d'instantané). Cela a permis de dé-dupliquer le code ainsi que d'améliorer plusieurs de ces fonctionnalités (voir ci-dessous).

- La deuxième fenêtre d'image de la chambre noire a été améliorée pour prendre en charge les modes d'évaluation des couleurs ISO-12646 et de focus peaking.

- Le module d'instantané a été entièrement retravaillé de sorte qu'au lieu d'utiliser une capture d'écran fixe, il utilise désormais une vue générée dynamiquement à l'aide de la nouvelle fonctionnalité du pixelpipe (voir ci dessus). Cela signifie qu'il est désormais possible de zoomer et de se déplacer avec le clavier et la souris dans les instantanés.

- Le gestionnaire de clones utilisait auparavant un pipe différent pour calculer ses aperçus (c'est-à-dire lors d'un appui long sur la vignette d'une image dupliquée), ce qui signifiait souvent que les clones affichés différaient de la vue principale de la chambre noire de manière subtile. L'utilisation de la nouvelle routine du pixelpipe signifie maintenant que ces aperçus seront identiques à ceux produits pendant l'édition en chambre noire.

- Il est désormais possible de prévisualiser l'effet d'un style généré par l'utilisateur sur une image avant de l'appliquer. Il suffit de passer la souris sur le nom du style dans le module des styles de la table lumineuse ou dans le menu d'accès rapide de la chambre noire et une nouvelle infobulle apparaîtra, montrant l'image avec le style appliqué ainsi que les détails des modules inclus.

- Certains appareils photo enregistrent les informations de correction de l'objectif dans les métadonnées EXIF de l'image. Le module de correction de l'objectif a été amélioré de manière à pouvoir extraire ces données et les utiliser pour corriger les distorsions de l'objectif.

- darktable est maintenant capable de lire et d'écrire les images JPEG XL.

- Les modules de traitement et les modules utilitaires ont été modifiés de sorte que si un module n'est pas entièrement visible lorsqu'il est développé, il sera automatiquement scrollé jusqu'à ce que l'ensemble de son interface utilisateur soit visible à l'écran.

- Dans le cadre de ce changement, un nouvel effet d'animation a été ajouté lors de l'expansion/réduction des modules. La vitesse de l'animation d'expansion/réduction peut être contrôlée via un paramètre de préférence ("préférences > divers > temps en millisecondes de transition de l'interface"). Mettez-le à zéro pour désactiver l'animation.

- La fonctionnalité de mise en cache du pixelpipe a été complètement remaniée. Davantage de lignes de cache sont utilisées avec un taux de réussite amélioré tout en contrôlant la quantité totale de mémoire utilisée, ce qui permet d'obtenir une interface nettement plus rapide.

- Le diaporama a été réécrit pour une meilleure expérience utilisateur. Un petit aperçu s'affiche pendant que l'image complète est calculée pour indiquer à l'utilisateur que quelque chose est en train de se faire en arrière-plan.

- Un nouveau menu déroulant a été ajouté à la barre de filtres supérieure pour permettre d'ajouter et de supprimer facilement des filtres. Certains critères de tri ont été supprimés de cette liste car ils n'étaient pas facilement lisibles sur la barre supérieure.

- L'interface utilisateur du widget de filtre de classement par score (étoiles) a été retravaillée pour une meilleure lisibilité. Ce nouveau widget devrait être plus facile à utiliser et plus efficace.

## Autres changements

- Masques
  - Ajout d'un support pour la manipulation des masques dessinés sans utiliser la molette de la souris (pour les utilisateurs de tablettes).
  - Le gestionnaire de masques a été amélioré avec une nouvelle section repliable contenant des contrôles pour modifier les propriétés des masques.
  - Il est également possible de modifier une propriété qui est partagée par un groupe de formes.
  - Les formes de cercle et d'ellipse ont également été améliorées grâce à de nouvelles commandes directement sur la fenêtre permettant de modifier la taille du masque et l'adoucissement.
  - L'affichage sur le bandeau supérieur a été également amélioré et complété.

- Ajout du support du format WebP en lecture.

- Intégration du profil ICC dans les fichiers WebP lors de l'export.

- Pour les modules contenant plusieurs onglets (filmique RVB, balance couleur RVB, calibration des couleurs, égaliseur de ton, ...), un double clic sur un des onglets réinitialise tous les réglages de l'onglet sans toucher à ceux des autres.

- Prise en charge des formats locaux pour les données, les dates et les heures dans les infobulles des vignettes.

- Si, sur une action, une commande de script LUA a été définie, elle s'affichera dans l'infobulle de cete action.

- Le code SSE a été supprimé des modules "balance des blancs" et "profil de couleur de sortie", car les valeurs par défaut du compilateur offrent désormais une vitesse similaire.

- Ajout de la prise en charge de l'extension de fichier JFIF (JPEG File Interchange Format), qui est une extension de la norme JPEG.

- La préférence pour l'application automatique de netteté a été supprimée. Pour les utilisateurs qui ont encore besoin de cette fonctionnalité, elle peut être facilement remplacée par un préréglage avec application automatique généré par l'utilisateur.

- Ajout du support pour la mise à jour des images existantes dans l'exportation Piwigo.

- Tous les préréglages de balance des blancs qui étaient précédemment dans le code, ont été migrés vers un fichier JSON externe. Cela ne devrait pas affecter le fonctionnement du module.

- Les préférences permettant de définir la disposition du module "balance des couleurs" et les couleurs du module "balance des blancs" ont été supprimées de la boîte de dialogue des préférences globales, car ces commandes sont déjà disponibles directement dans les modules respectifs.

- Amélioration de la prise en charge des profils pour les formats AVIF et EXR. Assouplit également le lecteur AVIF en n'exigeant pas une conformité totale.

- Le nombre d'images de la collection en cours est désormais affiché dans la barre supérieure, à côté des filtres d'image, ce qui signifie qu'il est disponible même lorsque la zone arrière supérieure est masquée.

- Tenter d'obtenir l'espace couleur pour les fichiers PNG à partir du chunk cICP. Cela a été ajouté lors d'une révision récente de la spécification PNG, nous en tirons donc avantage, s'il est présent.

- La lecture des demi-flottants 16 bits pour le format TIFF se fait maintenant en utilisant la bibliothèque Imath.

- Il est maintenant possible de mapper des raccourcis sur les différents controles du module exportation.

- Introduction du tuilage équilibré "OpenCL vs CPU". Cela permet d'utiliser le tuilage CPU si la mémoire de la carte OpenCL est insuffisante (ce qui nécessiterait de gérer un grand nombre de tuiles sur la carte). En fin de compte, le grand nombre de tuiles et la zone de chevauchement rendraient l'utilisation du code OpenCL plus lente (voire beaucoup plus lente) que la manipulation de l'image sans tuilage sur le CPU.

- En mode aperçu plein écran (en appuyant sur <kbd>Ctrl+w</kbd>), le bloc d'affichage des méta-données sur l'image n'est plus affiché par défaut. En déplaçant le curseur dans la moitié supérieure, la bloc apparaît, puis disparaît à nouveau après une brève période.

- Régler les motifs lumineux des rotateurs midi Behringer b-control (BCR2000/BCF2000)

- Correction de la lecture des métadonnées EXIF lors de l'importation d'EXRs (si souhaité,les fichiers existants doivent être réimportés, rafraîchir les métadonnées n'est pas suffisant).

- Ajout de la prise en charge du défilement des préréglages à l'aide de raccourcis.

- Les panneaux utilisent désormais des "tailles naturelles" par défaut, ce qui signifie que leur taille initiale s'adapte à la résolution de l'écran.

- Le module de géolocalisation prend désormais mieux en charge les panneaux latéraux étroits en enveloppant le texte au lieu d'effectuer une ellipse de textes.

- Des actions supplémentaires ont été ajoutées à l'écran d'aide principal (affiché en appuyant sur la touche <kbd>h</kbd>).

- Le module lensfun est maintenant une dépendance obligatoire. Cela garantira que toutes les compilations de darktable auront le module de correction d'objectifs. Cela signifie également qu'une édition avec ce module ne sera pas perdue parce que le module est manquant suite à une mauvaise compilation.

- Il est désormais possible d'attribuer des raccourcis au module de traitement "actuellement ciblé". Cela permet de créer un ensemble commun de raccourcis et de les réutiliser dans plusieurs modules, simplement en mettant l'accent sur ce module. Par exemple, un raccourci clavier unique appliqué au "premier curseur" affectera le curseur "exposition" lorsque le module exposition est focalisé, et le curseur "rotation" lorsque le module "rotation et perspective" est focalisé. Une fonctionnalité similaire peut être utilisée pour affecter le "nième" curseur, la combobox, le bouton ou l'onglet, ainsi que le module ciblé lui-même.

- Un clic droit sur l'en-tête d'un module dans le panneau d'accès rapide permet désormais d'ajouter rapidement d'autres widgets du même module. L'infobulle et l'icône indiquent si ces widgets sont actuellement masqués dans le module complet.

## Correction de bogues

- Utiliser correctement le profil de couleur d'affichage dans la vue diaporama. Cette fonction était absente, ce qui signifie que les images ignoraient le profil de couleur et étaient affichées (très) différemment de ce qu'elles étaient dans les vues table lumineuse ou chambre noire.

- Honorer correctement l'état d'activation ou de désactivation d'un module dans un style. Cela signifie que les styles peuvent maintenant être utilisés dans le module "exportation" pour désactiver un module autrement activé dans la pile d'historique.

- Corriger la taille et la position du popup bauhaus.

- Fixe le nom de l'ordre des modules lors d'une réinitialisation.

- Ne pas afficher les actions de module dépréciées dans la section des raccourcis de la boîte de dialogue des préférences globales.

- Correction de certains positionnements de popup de widgets bauhaus sur Wayland.

- Correction d'un problème de performance lors de l'importation de grands dossiers où les XMPs contiennent beaucoup de métadonnées.

- Correction de certaines mises à jour manquantes de l'interface graphique dans le module "liquéfier". Dans certains cas, la modification de la force d'un nœud dans une courbe ou une ligne ne mettait pas correctement à jour les valeurs de déplacement.

- Correction d'une mauvaise interaction entre le mode "évaluation des couleurs" (icône ampoule en chambre noire) et les panneaux.

- Correction l'affichage de la mise au point à l'infini dans les informations sur l'image.

- Correction de la traduction des messages du module de retouche affichés dans le bandeau.

- Lors de l'importation d'images, conserver le mode dossier ou pellicule actuellement sélectionné dans le module des collections si l'un de ces modes est actuellement actif. Si un autre mode de collecte était actif, l'importation repasse en mode pellicule (comme auparavant).

- Correction de la conversion L\*a\*b\* dans l'importation TIFF.

- Correction de l'indicaton de surbrillance dans tous les modes de "reconstruction des hautes lumières".

- Correction de l'indicateur visuel de reconstruction de la lumière pour les fichier raw X-Trans.

- Correction de l'annulation/rétablissement après un appliquation d'un style via un raccourci.

- Ne pas reconstruire toute l'arborescence lorsque vous supprimez ou modifiez un préréglage dans les préférences. Cela donne une meilleure stabilité à l'interface utilisateur.

- Correction de certains rafraîchissements du gestionnaire de masques lors du changement d'images.

- Correction de la sélection du masque après la création d'un masque continu.

- Correction du nom et de l'info-bulle dans les préférences du module "dématriçage" afin qu'ils soient corrects pour tous les types de capteurs.

- Suppression de la vérification automatique de la marge de manœuvre d'OpenCL, car elle causait plus de problèmes qu'elle n'en résolvait.

- Correction du curseur non clignotant dans la zone de recherche de module. Cela donnait l'impression que la barre de recherche était inactive.

- Enregistrer correctement le niveau de noir de la librairie "libraw".

- Correction de l'état de certains boutons de l'interface utilisateur dans le module de retouche lors du changement d'image.

- Correction de la sélection des images non modifiées.

- Correction des raccourcis clavier afin qu'ils puissent être appliqués aux widgets d'une une section réduite d'un module.

- Correction d'une coquille empêchant l'expansion correcte de la variable $(FOLDER.PICTURES).

- Corrige le chargeur PNM (qui pouvait afficher des images cassées et toujours de mauvaises couleurs).

- Correction du dessin de la zone de la "pipette de couleur" lorsque la zone est au bord de l'image. Lorsque la souris sort des bords de l'image, nous ne perdons plus l'action d'édition.

- Un ancien bogue dans la gestion du cache a été corrigé. Cela pouvait avoir différents effets comme l'absence d'un recalcul de l'affichage ou même un crash dans la chambre noire.

- Correction de l'état de l'interface de certains boutons à bascule qui n'étaient pas correctement mis à jour.

- Correction de la vérification des coefficients de température pour l'affichage des présélections.

- Correction du support du pixelpipe rapide dans certains modules pour la deuxième fenêtre.

- Dans le panneau d'accès rapide, les paramètres sont désormais masqués s'ils sont également masqués dans le module complet (pour les paramètres qui s'affichent de manière conditionnelle en fonction de l'état d'autres paramètres). Cela fonctionne même si ces paramètres sont modifiés à partir d'un autre widget du panneau d'accès rapide.

- Amélioration de l'étiquette de couleur bleue pour une meilleure visibilité dans le thème sombre.

- Correction de l'affichage de l'étiquette de l'indicateur de zoom de la fenêtre de navigation. Il était parfois coupé à droite ou en bas ou déplacé à l'intérieur de la fenêtre.

## Lua

- La version de l'API est passée à 9.0.0

- suppression des fonctions du comparateur darktable.gui.libs.filter.sort|sort order|rating|rating.

- nom de fichier supprimé dans le type de données dt_lua_snapshot_t.

- darktable.gui.libs.snapshot met désormais à jour l'écran après un changement de direction ou de rotation.

- le type de données lua snapshot récupère correctement le nom du snapshot.

## Notes

- Avec la prise en charge des formats JXL, AVIF et EXR pour l'exportation, la sélection de métadonnées spécifiques (exemple : balise géographique, créateur, ...) n'est actuellement pas possible. Pour les formats JXL, AVIF et EXR, darktable n'inclura pas les champs de métadonnées à moins que l'utilisateur ne sélectionne toutes les cases à cocher dans les options de référence d'exportation.

- Avec l'ajout de la ligne font-feature-settings : tnum ; qui permet un affichage correct des nombres, la version minimale de Gtk nécessaire (qui ajoute le support de cette nouvelle ligne) est 3.24.15. Si vous avez une version plus ancienne, il suffit de supprimer la ligne 241 du fichier darktable.css sur votre système. Voir : https://github.com/darktable-org/darktable/issues/13166

## Dépendances modifiées

### Obligatoires

- La version minimale de Gtk passe de 3.22 à 3.24.15

- lensfun est maintenant une dépendance obligatoire et non plus optionnelle.
  Les versions supportées sont les versions stables (par exemple 0.3.3),
  pas la pré-version alpha 0.3.95 ou la branche master.

### Optionnelles

- La version minimale requise de libavif passe de 0.8.2 à 0.9.1.

- Nouvelle dépendance optionnelle : libjxl, version minimale requise 0.7.0.

## Changements RawSpeed

## Prise en charge des appareils, par rapport à la version 4.0

### Support de base

- Canon EOS M2
- Fujifilm FinePix HS50EXR
- Fujifilm FinePix S6000fd
- Fujifilm X-H2 (compressed)
- Fujifilm X-H2S (compressed)
- Fujifilm X-T30 II (compressed)
- Fujifilm X-T5 (compressed)
- Leica D-LUX 6 (4:3, 3:2, 16:9, 1:1)
- Leica M Monochrom (Typ 246) (dng)
- Nikon 1 J4 (12bit-compressed)
- Nikon 1 S1 (12bit-compressed)
- Nikon Coolpix P7700 (12bit-compressed)
- Nikon D1H (12bit-uncompressed)
- Nikon D2H (12bit-compressed, 12bit-uncompressed)
- Nikon D3S (14bit-compressed, 14bit-uncompressed, 12bit-compressed, 12bit-uncompressed)
- Nikon Z 9 (14bit-compressed)
- Olympus E-10
- Olympus E-M10 Mark IIIs
- Olympus E-P7
- Olympus SP570UZ
- Panasonic DMC-G2 (4:3, 3:2, 16:9, 1:1)
- Pentax K2000
- Pentax K200D
- Ricoh GR II
- Samsung NX mini
- Samsung NX10
- Samsung NX11
- Samsung NX20
- Samsung NX2000
- Samsung NX5
- Sony DSLR-A380
- Sony DSLR-A560
- Sony ILCE-7RM5

### Préréglages de la balance des blancs

- Pas de changement dans cette version

### Profils de bruit

- Fujifilm X-E4
- Fujifilm X-T5
- Leica M (Typ 240)
- Nikon Z 9
- Olympus E-500
- Panasonic DMC-FZ330

### Support du mode de compression manquant

- Fujifilm "non-lossless"/lossy
- Nikon HE
- Sony lossless

### Support suspendu

Car aucun échantillon n'est disponible sur raw.pixls.us

- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm FinePix S9600fd
- Fujifilm IS-1
- GoPro FUSION
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Minolta DiMAGE 5
- Olympus SP320
- Panasonic DMC-FX150
- Pentax Q10
- Phase One IQ250
- Samsung GX10
- Samsung GX20
- Samsung EK-GN120
- Samsung SM-G920F
- Samsung SM-G935F
- Sinar Hy6/ Sinarback eXact
- ST Micro STV680

## Traductions

- Albanais
- Turc (nouveau)
