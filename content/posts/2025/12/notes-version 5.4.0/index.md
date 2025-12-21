---
title: "Version 5.4.0"
aliases:
  - "darktable-5-4-0"
date: "2025-12-21"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-5.4.0.png"
---

La version 5.4.0 de darktable est sortie ce dimanche.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

Les binaires pour macOS, windows et appimage, sont disponibles en bas
de [cette page Github](https://github.com/darktable-org/darktable/releases/tag/release-5.4.0).
Ils seront également disponibles sur la page [install du site dartable.org](https://www.darktable.org/install/) dans quelques jours.
Les versions compilées spécifiquement pour les différentes distributions Linux seront disponibles selon la diligence de leurs packageurs. En attendant, vous pouvez utiliser en toute sécurité, la version [appimage](https://github.com/darktable-org/darktable/releases/download/release-5.4.0/darktable-5.4.0-x86_64.AppImage).
Notez que cette version utilise directement vos fichiers de donnée déjà existants.

<div align="right">Jean-Pierre Verrue et manu'pintor</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 5.4.0 !

La version github est disponible ici :
[https://github.com/darktable-org/darktable/releases/tag/release-5.4.0](https://github.com/darktable-org/darktable/releases/tag/release-5.4.0) [En].

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Si vous ne construisez que pour vous-même
sans créer de paquetage pour une distribution quelconque, le clonage du code source
dans git est un moyen encore plus pratique.

Les sommes de contrôle sont :

```

$ sha256sum darktable-5.4.0.tar.xz
2bf0baea78d27945cf09c33d8804f179e03a83ee19d2e927fd660ea46aca3b16  darktable-5.4.0.tar.xz

$ sha256sum darktable-5.4.0-arm64.dmg
17e1eaf2bd7ab0ada2e93d4bba2ba6b81345e99eb338635682d08dae64d7a150  darktable-5.4.0-arm64.dmg

$ sha256sum darktable-5.4.0-win64.exe
655ce83046f27d20e1385bffa1e5471b702033083772f65db1fe1a07445c3eb8  darktable-5.4.0-win64.exe

$ sha256sum Darktable-5.4.0-x86_64.AppImage
efdd80be618dfa53f37f54a254e1eaaf2bd3a8c8b8d01b70582dad5cff07ef39  Darktable-5.4.0-x86_64.AppImage
```

Lors de la mise à jour à partir de la série stable 5.2, gardez à l'esprit que
vos modifications seront préservées pendant ce processus, mais que la nouvelle
bibliothèque et la configuration ne seront plus utilisables avec la version 5.2.


Il est fortement conseillé d'effectuer d'abord une sauvegarde.


#### Note importante :
Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil
photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) [En].
Vous y apprendrez comment contribuer à la constitution de l’ensemble complet d’échantillons d’images (sous licence CC0) pour votre boîtier.

Depuis darktable 5.2:

- 995 _commits_ vers darktable+rawspeed
- 385 _pull requests_ traitées
-  56 _issues_ fermées
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 5.4 
et que toutes les contributions sont très appréciées. Veuillez consulter la
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
[En] pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable 5.4.
Veuillez consulter le manuel d'utilisation pour plus de détails sur chaque
modification (lorsqu'elles sont disponibles).

- Une nouvelle section intitulée **Netteté de capture** a été ajoutée au module de dématriçage.
  La netteté de capture tente de récupérer les détails perdus en raison du flou intégré à
  l'appareil photo, qui peut être causé par la diffraction, le filtre anticrénelage ou d'autres
  sources de flou de type gaussien.

- Ajout d'un nouveau module de mappage de tons **AgX** basé sur la transformation d'affichage
  AgX de Blender. La sortie couleur du nouveau module est similaire à celle de **Sigmoide**,
  mais l'ensemble de commandes fourni est plus complet. Il permet de régler explicitement les
  points blancs et noirs d'exposition, comme dans **Filmique RVB**. L'implémentation comprend
  un point pivot réglable par l'utilisateur pour la courbe de tons, avec une valeur par défaut
  fixée à 18 % de gris moyen. Le contraste autour de ce pivot est réglable. Des commandes sont
  fournies pour créer une section de contraste constant, et des curseurs indépendants sont
  disponibles pour contrôler le contraste dans les ombres et les hautes lumières (la « base »
  et le « sommet » de la courbe). Le résultat se caractérise par une désaturation progressive
  des couleurs dans les hautes lumières, similaire à celle d'un film, et une représentation
  naturelle des couleurs dans les tons moyens et les hautes lumières.

- Ajout de la prise en charge de plusieurs espaces de travail. Lorsque l'option correspondante
  est activée dans les préférences, darktable ouvre une boîte de dialogue au démarrage. À
  partir de cette boîte de dialogue, vous pouvez sélectionner l'espace de travail par défaut
  (celui créé la première fois et actuellement utilisé par défaut par chacun) ou en créer un
  nouveau. Chaque espace de travail dispose de sa propre base de données et de son propre
  fichier de configuration (collection, derniers paramètres par défaut de l'interface
  utilisateur, etc.).

  Un espace de travail en mémoire peut également être sélectionné dans la boîte de dialogue.
  Dans ce cas, aucune base de données n'est créée sur le disque, mais un fichier de
  configuration est créé.

## Améliorations de l'interface utilisateur (UI/UX)

- De nombreuses distributions GNU/Linux ont abandonné la prise en charge de X11 pour ne
  conserver que Wayland. darktable a bénéficié de nombreuses corrections afin de fonctionner
  correctement sous Wayland, notamment l'affichage des profils ICC. Cette version 5.4 devrait
  fonctionner aussi bien sous Wayland que sous X11.

- Afficher un curseur « occupé » lors du changement de vue. Cela permet d'obtenir un retour
  immédiat lorsque, par exemple, vous double-cliquez sur une image dans la table lumineuse, au
  lieu de simplement geler l'interface utilisateur jusqu'à ce que la chambre noire ait fini de
  s'ouvrir.

- Ajout du menu standard « Window » à la barre de menus de l'application sous macOS.

- Dans le module **Égaliseur de ton**, les commandes d'exposition et de compensation du
  contraste du masque ont été déplacées vers l'onglet **Avancé**.

- Dans les **fenêtres de navigation**, le zoom fonctionne désormais mieux. Après un zoom libre
  dans la **chambre noire**, en utilisant le défilement sur **l'indicateur de niveau de zoom**,
  le zoom sélectionné sera le plus proche possible (au-dessus ou en dessous selon le sens du
  défilement). Cela est préférable au comportement précédent où le niveau de zoom était
  toujours réglé sur « petit ».

- Lorsque vous vous déplacez dans la vue centrale (zoomée) dans la **chambre noire**, nous
  pré-calculons désormais une zone légèrement plus grande afin qu'il ne soit pas toujours
  nécessaire de recalculer immédiatement après chaque déplacement. Après tout, le déplacement
  initial de 1 pixel de la souris n'est généralement pas définitif. Cela implique toutefois des
  temps de calcul plus longs. Vous pouvez donc désactiver cette fonction en réglant
  `darkroom/ui/anticipate_move` dans `darktablerc` sur 1,0. Si vous utilisez les touches du
  curseur pour vous déplacer, vous pouvez augmenter cette valeur à > 1,4 afin d'anticiper au
  moins un déplacement supplémentaire de 20 % de chaque côté. Lorsque le recalcul est déclenché
  par un changement de paramètre du module, par exemple une augmentation de l'exposition, seule
  la zone exacte affichée est calculée comme auparavant, pour une réactivité optimale.
  
- Lorsque vous appliquez une rotation ou un retournement, la transformation est immédiatement
  appliquée à la partie de l'image actuellement affichée dans la vue centrale, en attendant un
  recalcul complet. Auparavant, l'image était uniquement repositionnée, mais pas pivotée, ce qui
  entraînait des superpositions étranges pendant un bref instant.
  
  - La fenêtre contextuelle (qui s'affiche lorsque vous cliquez avec le bouton droit) pour les
  curseurs avec une plage de 360° affiche désormais une roue chromatique ou une boussole. Si le
  curseur est limité à une plage plus petite (par exemple dans **Rotation et perspective**),
  vous pouvez basculer vers la plage complète en cliquant avec le bouton central. Un autre clic
  avec le bouton central restaurera la plage limitée (et le mécanisme de réglage fin normal).

- Lorsque la plage d'un curseur a été augmentée au-delà des « limites souples », les zones
  extrêmes désormais visibles ont une couleur légèrement différente.

- Pour que la rotation de la molette corresponde à l'effet de rotation de l'image,la plupart
  des directions des curseurs d'angle ont été inversées. Vous pouvez ajouter une vitesse « -1 »
  à tous les raccourcis auxquels vous êtes habitué.
  
- Ajout de nouveaux raccourcis clavier par défaut. Ceux-ci ne prendront effet que si les
  touches ne sont pas encore associées à des fonctions définies par l'utilisateur.

  - <kbd>c</kbd> : basculer les **lignes guide**permuter le cadre de recadrage.

  - <kbd>e</kbd> : définir la compensation d'exposition (équivalent à un clic
    droit sur le curseur d'exposition).

  - <kbd>alt+r</kbd> : définir la rotation de l'image (équivalent à un clic droit
    sur le curseur de rotation).

  - <kbd>alt+[</kbd> et <kbd>alt+]</kbd> : ajustement fin de la rotation.

- Différentes formes pour l'indicateur sur les curseurs peuvent désormais être sélectionnées
  dans **Préférences→Divers→Interface** (triangle, cercle, losange, barre). Ndt : nécessite un
  redémarrage.

- Tous les boutons des barres d'outils de la **table lumineuse** et de la **chambre noire**
  conservent leur état activé d'une session à l'autre. La visibilité des boutons activés a été
  améliorée afin d'éviter toute confusion lors du redémarrage de darktable et l'apparition
  d'artefacts dus à l'activation de certains outils tels que **Vérification de gamut**.

- Le curseur indiquant les vignettes sélectionnées a été rendu plus visible. Il est désormais
  plus grand et comporte une bordure afin d'assurer une meilleure visibilité sur les vignettes
  sombres.

## Améliorations des performances

- Optimisation des performances du module **3D LUT** (gain de vitesse de 5 % à 20 %).

- Accélération spectaculaire du premier démarrage d'une nouvelle installation lorsque la
  bibliothèque est stockée sur un disque dur ou un NAS plutôt que sur un SSD.

- Lorsque vous effectuez un zoom ou un panoramique sur la vue centrale, les
  transformations dans le module **Liquéfier** sont ignorées. Cela améliore
  considérablement la réactivité lorsque ce module est actif.

## Autres changements

- Le modificateur <kbd>Majuscule</kbd> permet maintenant de sélectionner
  uniquement les points de contour progressif sur les masques de fusion. Cela est parfois
  nécessaire lorsque le point de chemin et le point de contour progressif sont trop proches
  l'un de l'autre.

- Les préréglages hiérarchiques sont désormais pris en charge pour les modules utilitaires
  comme pour les modules de traitement.

- Le double dématriçage fonctionne désormais également en mode tuilage pour des performances
  OpenCL potentiellement meilleures et une pression moindre sur la mémoire du processeur.
  
- Ajout d'une compensation automatique de la sous-exposition cachée de l'appareil photo pour
  les modes Canon _Lighting Optimizer_, Nikon _Active D-Lighting_ et _HLG_, le mode Olympus
  _Gradation_, le mode Pentax _Dynamic Range Expansion_ et les modes Fujifilm _DR200_ et
  _DR400_. Cela affecte à la fois les modules **Exposition** et **Réduction du bruit (profil)**.

- Ajout d'un affichage en pourcentage RVB dans le module de sélection des couleurs.

- Il est maintenant possible de créer une zone de recadrage beaucoup plus petite (recadrage
  jusqu'à 99 % de la taille de l'image).

- La variable `$(ROLL.NAME)` dispose maintenant de niveaux optionnels `$(ROLL.NAME[n])`, où `n`
  doit être compris entre 1 et 5, ces niveaux suivent les mêmes règles que le pellicule, la
  valeur par défaut de `n` est 1, ce qui conserve le comportement précédent de `$(ROLL.NAME)`.

- Ajout d'une collection optionnelle de raccourcis clavier+souris pour contrôler les modules de
  traitement d'image. Installez-les en cliquant sur le nouveau bouton **Importer les extras**
  dans l'onglet **Raccourcis** des **Préférences**.
  
- L'option **Écraser** du module **Développement** de la **Table lumineuse** a été supprimée.
  Cette option était utilisée lors du collage de l'historique pour supprimer l'ancien
  historique avant de coller le nouveau. Elle est rarement utilisée et prêtait à confusion lors
  des opérations de copier/coller dans la chambre noire à partir de la pellicule, car cette
  option n'était visible que sur la table lumineuse. L'option a été déplacée dans la boîte de
  dialogue **Coller sélectivement**.

- Ajout d'un contrôle manuel du sous-échantillonnage chromatique pour l'exportation AVIF. Les
  utilisateurs peuvent désormais choisir entre les modes de sous-échantillonnage chromatique
  _auto_, _4:4:4_, _4:2:2_ et _4:2:0_ indépendamment du paramètre de qualité, ce qui permet une
  meilleure optimisation du compromis qualité/taille pour les fichiers AVIF.
  
- Les raccourcis donnant le focus aux modules de traitement fonctionnent également si le
  panneau d'accès rapide a le focus, en s'adressant aux 20 premiers curseurs ou menus
  déroulants de celui-ci.
  
  Ndt : malgré pas mal de recherches, je n'ai pas pu résoudre l'ambigüité
  de la formulation en anglais. Je ne suis pas du tout sûr de ma traduction.
  En conséquence je laisse en plus le texte original : The processing
  modules/<focused> shortcuts also work if the quick access panel is
  "focused", addressing the first 20 sliders or dropdowns.

- Si seul le premier rotor d'un contrôleur MIDI est assigné, ceux dont le numéro est plus élevé
  s'adressent automatiquement aux éléments croissantsde la même action ou aux actions
  suivantes. Cela permet une (ré)assignation rapide à l'action en cours ou aux mimiques
  configurées avec, par exemple, le script Lua x-touch.

  Ndt : même chose que pour l'item précédent. Voici le texte original :
  If only the first rotor on a midi controller is assigned, the higher
  umbered ones automatically address increasing elements of the same
  action or subsequent actions. This allows quick (re) assignment to he
  <focused> action or to the mimics set up with for example the x-touch
  Lua script.

- La possibilité de calculer le facteur de recadrage pour les appareils photo Olympus a été
  ajoutée.

- Lorsque vous créez des styles avec plusieurs images sélectionnées, cliquer sur le bouton
  **Annuler** ou appuyer sur la touche <kbd>Échap</kbd> dans la boîte de dialogue de style met
  désormais fin à l'ensemble du processus au lieu de passer à l'image suivante.

## Correction de bogues

- Correction de certains problèmes liés à la gestion des styles hiérarchiques dans le module
  styles.

- Correction du déplacement des fichiers audio ou texte supplémentaires lorsqu'une image est
  déplacée.

- Correction de la restauration des collections basées sur des modules. Après avoir quitté
  darktable avec une collection basée sur des modules, la table lumineuse était vide après le
  redémarrage.

- Correction de certains problèmes de réinitialisation du module d'exportation. Les sections
  format et stockage n'étaient pas réinitialisées correctement.

- Correction d'un problème de corruption des fichiers sidecar lors d'importations volumineuses
  d'images avec des fichiers sidecar XMP.

- Correction d'un bug où la modification de la mise à l'échelle de l'image dans le module
  d'exportation influençait le résultat d'une tâche d'exportation en cours d'exécution.

- Nous nous assurons de toujours remplir entièrement la zone centrale de la **Chambre noire**
  lors d'un zoom à grande échelle.

- Lorsque le zoom est réglé à 1600 %, ne pas ignorer le panning/dragging des sous-pixels,
  qui rendait presque impossible tout déplacement.

- Forcer la mise à jour de l'horodatage de l'image **Heure de modification** lorsqu'un fichier
  sidecar est appliqué.

- Corrigé : Le glisser-déposer d'images sur la carte entraîne une attribution erronée de
  l'emplacement sur macOS.

- Préréglages automatiquement appliqués pour les images SRAW et les vrais monochromes.

- Correction d'un bug dans le réglage **Seuil des détails** des masques pour les fichiers RAW
  monochromes qui provoquait des plantages.

- Correction d'un problème lié au positionnement de la fenêtre principale de la **Chambre
  noire** dû à la précision des calculs. La précision est désormais au pixel près, ce qui évite
  tout déplacement dans certains cas.

- Correction d'un problème dans darktable-cli qui empêchait la détection des fichiers en entrée.

- Correction d'un problème de mémoire insuffisante qui pouvait bloquer darktable sur les petits
  systèmes lors du traitement d'images volumineuses.

- Correction de la traduction du message contextuel affiché lors du survol du bouton
  préréglages des modules.

- Correction d'un problème lié à la lecture des fichiers TIFF contenant(à tort) des métadonnées
  spécifiques aux fichiers bruts à partir desquels ils ont été créés.

- Corrigé : les styles importés qui n'avaient pas de nom pouvaient provoquer le plantage de
  darktable au démarrage.

- Correction d'un bug entraînant des couleurs incorrectes dans la fenêtre principale de la
  chambre noire (principalement après l'utilisation d'un sélecteur de module) en raison de
  coefficients de couleur incorrects dans le module **Profil de couleur d'entrée**.

- Correction du support pour Wayland. L'interface utilisateur fonctionne désormais comme prévu
  et darktable gère les profils ICC de `colord`.

- Correction de la dénomination des modules de traitement basée sur les préréglages lorsque le
  préréglage utilisé est renommé ou supprimé.

- Correction d'un bug dans `darktable-cli` où l'exportation d'une version dupliquée d'une image
  utilisait les **mots-clés** associés à la version de base au lieu des **mots-clés** qui lui
  étaient associés.

- Correction d'un bug dans `darktable-cli` où les synonymes des **mots-clés** associés à une
  image étaient ignorés lors de son exportation.

- Correction des préréglages utilisateur appliqués automatiquement lorsque l'on clique sur un
  module de traitement tout en maintenant la touche Ctrl enfoncée après le redémarrage de
  dakrtable.

- Correction d'un bug dans la table lumineuse qui pouvait fusionner plusieurs groupes lors de
  l'ajout d'une image à un groupe.

- Correction d'un problème de mémoire insuffisante qui pouvait bloquer darktable sur les petits
  systèmes lors du traitement d'images volumineuses.

- Correction de la traduction du message contextuel affiché lors du survol du bouton
  préréglages des modules.

- Correction d'un problème d'impression qui ne se produit probablement que sur macOS. Lors de
  l'impression en mode paysage, la rotation de l'image n'est pas effectuée sur l'imprimante.
  Ainsi, seule une partie de l'image est imprimée au bas de la page. Ce problème n'est pas
  encore tout à fait compris à ce stade et n'a été signalé que deux fois. Si vous rencontrez ce
  problème, vous pouvez définir la variable suivante dans votre darktablerc pour forcer la
  génération de l'option CUPS paysage :
  
     `plugins/print/cups/force_landscape=TRUE`

- Correction de l'affichage éventuel d'un double curseur en forme de pouce sur la **Pellicule**
  dans la **Chambre noire**. De plus, l'arrière-plan des pouces pouvait apparaître comme
  sélectionné sur plusieurs images.

- Correction du traitement en **Chambre noire** après modification d'un profil de couleur.

- Pour les raccourcis de basculement des modules (tels que **activer**, **afficher** et
  **mettre en avant**), les effets **activé** et **désactivé** sont désormais respectés (ils ne
  basculent plus systématiquement comme auparavant).

- Correction d'une restriction trop stricte concernant la longueur des noms de fichiers dans le
  module de filigrane.

## Lua

### Version de l'API

- La version de l'API est la 9.6.0

### Nouvelles fonctionnalités

- Ajout de `darktable.query_event()` pour vérifier si un événement est enregistré.

- Ajout d'un événement `collection-changed` qui se déclenche lorsque la collection change.

- Ajout de `darktable.configuration.share_dir` et `darktable.configuration.data_dir` pour
  exposer les données darktable et partager les répertoires.

### Correction de bogues

- Vérification ajoutée pour s'assurer que l'affichage a bien changé avant de traiter les
  événements GUI, afin d'éviter tout blocage au démarrage.

- renvoie une valeur nil au lieu de générer une erreur Lua si l'élément indexé des tables Lua
  suivantes n'existe pas ou si la table est vide :

  - `dt_lua_tag_t.#`

  - `dt_lua_film_t.#`

  - `dt_style_t.#`

  - `darktable.films.#`

  - `darktable.styles.#`

  - `darktable.database.#`

  - `darktable.collection.#`

- S'assurer que `darktable.database.get_image()` renvoie une valeur nil, dans toutes les
  conditions, pour une image qui n'existe pas.

- S'assurer que les traductions s'affichent en UTF-8 sous Windows.

### Ajout d'un support d'action pour Lua

- N/A

Autres changements Lua

- N/A

## Notes

- Lors de l’exportation vers les formats AVIF, EXR, JPEG XL ou XCF, la sélection de métadonnées
  spécifiques (par exemple, géomarquage ou créateur) n’est actuellement pas possible. Pour les
  formats AVIF, EXR, JPEG XL et XCF, darktable n’inclura aucun champ de métadonnées à moins que
  l’utilisateur ne sélectionne toutes les cases à cocher dans les options de Préférence du
  module Exporter.

- À partir de la version 5.4, les Mac Intel et les versions macOS antérieures à la version 14.0
  ne sont plus pris en charge.

## Changement de dépendances

### Obligatoire(s)

- N/A

### Optionelle(s)

- N/A

## Changements RawSpeed

- Canon EOS 2000D/1500D/Rebel T7/Kiss X90 La matrice de couleurs a été mise à jour.
- Nikon Z 7 La matrice de couleurs a été mise à jour.
- Nikon Z5_2 La matrice de couleurs a été mise à jour.
- Sony ILCE-1M2 La matrice de couleurs a été mise à jour.

## Nouveaux Supports d'appareils depuis la version 5.2

### Support de base

- Canon EOS R1 (requires `LibRaw 0.22-PreRC1` and later)
- Canon EOS R5 Mark II (requires `LibRaw 0.22-PreRC1` and later)
- Canon PowerShot D10 (DNG)
- Canon PowerShot S100V
- Canon PowerShot S2 IS (DNG)
- Fujifilm FinePix HS33EXR
- Fujifilm X-E5 (compressed)
- Kodak DCS Pro SLR/c
- Kodak P712
- Leica D-Lux 8
- Leica M EV1 (DNG)
- Leica Q3 Monochrom (DNG)
- Leica X-E (Typ 102) (DNG)
- Nikon Z fc (14bit-uncompressed, 12bit-uncompressed)
- OM System OM-5 Mark II
- Olympus SP550UZ
- Olympus SP565UZ
- Panasonic DC-S1M2 (3:2)
- Panasonic DC-S1M2ES (3:2)
- Ricoh GR IV (DNG)
- Ricoh GX200 (DNG)
- Sony DSC-RX1RM3
- Sony ZV-1M2

### Préréglages de la balance des blancs

- Canon EOS R5 Mark II
- Nikon D2H
- Nikon Z5_2

### Profils de réduction de bruit

- Canon EOS R1
- Canon EOS R5 Mark II
- Fujifilm X-E5
- Fujifilm X-M5
- Nikon Z fc
- Sony ILCA-99M2

### Absence de prise en charge des fichiers raw compressés

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 utilisant JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Phase One autres que IIQ L
- Sony ARW 4.0/5.0 downsized lossless ("M" for full-frame, "S" for full-frame & APS-C) and ARW
  6.0 lossy

### Fin de  Support

La prise en charge des appareils suivants est suspendue car aucun échantillon n’est disponible 
sur raw.pixls.us :

- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm IS-1
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Olympus SP320
- Phase One IQ250
- ST Micro STV680

## Traductions

- Tchèque
-    Allemand
-    Espagnol européen
-    Finlandais
-    Français
-    Hongrois
-    Italien
-    Japonais
-    Coréen
-    Néerlandais
-    Polonais
-    Brésilien Portugais
-    Slovène
-    Albanais
-    Suédois
-    Ukrainien
-    Chinois (simplifié)
-    Chinois (traditionel)
