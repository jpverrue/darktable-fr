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
de [cette page Github](https://github.com/darktable-org/darktable/releases/tag/release-5.4.0)
Ils seront également disponibles sur la page [install du site dartable.org](https://www.darktable.org/install/) dans quelques jours.
Les versions compilées spécifiquement pour les différentes distributions Linux seront disponibles
selon la diligence de leurs packageurs. En attendant, vous pouvez utiliser en toute sécurité,
la version [appimage](https://github.com/darktable-org/darktable/releases/download/release-5.4.0/Darktable-5.4.0-x86_64.AppImage).

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 5.4.0 !

La version github est disponible ici :
[https://github.com/darktable-org/darktable/releases/tag/release-5.4.0](https://github.com/darktable-org/darktable/releases/tag/release-5.4.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Si vous ne construisez que pour vous-même
sans créer de paquetage pour une distribution quelconque, le clonage du code source
dans git est un moyen encore plus pratique.

Les sommes de contrôle sont :

```
$ sha256sum darktable-5.2.0.tar.xz
53a46cd46ef7118485c4abf4ab407c181639bb8634243ec0ed1f7c1e8299bec6  darktable-5.2.0.tar.xz

$ sha256sum darktable-5.2.0-x86_64.dmg
bdffebcf758cd1ec6d4ee26eb031d52b1d7e4fe8fe000e728edb14bec91f3a35  darktable-5.2.0-x86_64.dmg

$ sha256sum darktable-5.2.0-arm64.dmg
8dabf58b6d76c04800be8ab540d3c2f1e772123279e22629a7396fe3e26273de  darktable-5.2.0-arm64.dmg

$ sha256sum darktable-5.2.0-arm64-13.5.dmg
8b35cff9d926bc4ae08ea88a09a2a45082756548c9f641afad0d785371dcf384  darktable-5.2.0-arm64-13.5.dmg

$ sha256sum darktable-5.2.0-win64.exe
4c1499e9d137efcd87e8b70fb6a0374f7139f1d0f0c49baeac9923ef7df7bdaa  darktable-5.2.0-win64.exe

$ sha256sum Darktable-5.2.0-x86_64.AppImage
294eff1d74d322cc5459221361ac7bdcdf0dc41529a02c165d0861e085978d58  Darktable-5.2.0-x86_64.AppImage
```

Lors de la mise à jour à partir de la série stable 5.2.x, gardez à l'esprit que
vos modifications seront préservées pendant ce processus, mais que la nouvelle
bibliothèque et la configuration ne seront plus utilisables avec la version 5.2.0


Il est fortement conseillé d'effectuer d'abord une sauvegarde.


#### Note importante :
Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil
photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri).
Vous y apprendrez comment contribuer à la constitution de l’ensemble complet d’échantillons
d’images (sous licence CC0) pour votre boîtier.

Depuis darktable 5.2:

- ???? _commits_ vers darktable+rawspeed
-  ??? _pull requests_ traitées
-   ?? _issues_ fermées
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 5.4
et que toutes les contributions sont très appréciées. Veuillez consulter la
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable 5.4.
Veuillez consulter le manuel d'utilisation pour plus de détails sur chaque
modification (lorsqu'elles sont disponibles).

- Une nouvelle section intitulée **Netteté de capture** a été ajoutée au module
  de dématriçage. La netteté de capture tente de récupérer les détails perdus
  en raison du flou intégré à l'appareil photo, qui peut être causé par la
  diffraction, le filtre anticrénelage ou d'autres sources de flou de type gaussien.

- Ajout d'un nouveau module de mappage de tons **AgX** basé sur la transformation
  d'affichage AgX de Blender. La sortie couleur du nouveau module est similaire à
  celle de **Sigmoide**, mais l'ensemble de commandes fourni est plus complet. Il
  permet de régler explicitement les points blancs et noirs d'exposition, comme dans
  **Filmique RVB**. L'implémentation comprend un point pivot réglable par l'utilisateur
  pour la courbe de tons, avec une valeur par défaut fixée à 18 % de gris moyen. Le
  contraste autour de ce pivot est réglable. Des commandes sont fournies pour créer une
  section de contraste constant, et des curseurs indépendants sont disponibles pour
  contrôler le contraste dans les ombres et les hautes lumières (la « base » et le
  « sommet » de la courbe). Le résultat se caractérise par une désaturation progressive
  des couleurs dans les hautes lumières, similaire à celle d'un film, et une représentation
  naturelle des couleurs dans les tons moyens et les hautes lumières.

- Ajout de la prise en charge de plusieurs espaces de travail. Lorsque l'option
  correspondante est activée dans les préférences, Darktable ouvre une boîte de
  dialogue au démarrage. À partir de cette boîte de dialogue, vous pouvez sélectionner
  l'espace de travail par défaut (celui créé la première fois et actuellement utilisé
  par défaut par tout le monde) ou en créer un nouveau. Chaque espace de travail dispose
  de sa propre base de données et de son propre fichier de configuration (collection,
  derniers paramètres par défaut de l'interface utilisateur, etc.).

  Un espace de travail en mémoire peut également être sélectionné dans la boîte de
  dialogue. Dans ce cas, aucune base de données n'est créée sur le disque, mais un
  fichier de configuration est créé.

## Améliorations de l'interface utilisateur (UI/UX)

- De nombreuses distributions GNU/Linux ont abandonné la prise en charge de X11
  pour ne conserver que Wayland. Darktable a bénéficié de nombreuses corrections
  afin de fonctionner correctement sous Wayland, notamment l'affichage des profils
  ICC. Cette version 5.4 devrait fonctionner aussi bien sous Wayland que sous X11.

- Afficher un curseur « occupé » lors du changement de vue. Cela permet d'obtenir
  un retour immédiat lorsque, par exemple, vous double-cliquez sur une image dans
  la table lumineuse, au lieu de simplement geler l'interface utilisateur jusqu'à
  ce que la chambre noire ait fini de s'ouvrir.

- Ajout du menu standard « Window » à la barre de menus de l'application sous macOS.

- Dans le module **Égaliseur de ton**, les commandes d'exposition et de
  compensation du contraste du masque ont été déplacées vers l'onglet **Avancé**.

- Dans la **fenêtre de navigation**, le zoom fonctionne désormais mieux. Après un
  zoom libre dans la **chambre noire**, en utilisant le défilement sur **l'indicateur
  de niveau de zoom**, le zoom sélectionné sera le plus proche possible (au-dessus ou
  en dessous selon le sens du défilement). Cela est préférable au comportement
  précédent où le niveau de zoom était toujours réglé sur « petit ».

- Lorsque vous vous déplacez dans la vue centrale (zoomée) dans la **chambre noire**,
  nous pré-calculons désormais une zone légèrement plus grande afin qu'il ne soit
  pas toujours nécessaire de recalculer immédiatement après chaque déplacement.
  Après tout, le déplacement initial de 1 pixel de la souris n'est généralement
  pas définitif. Cela implique toutefois des temps de calcul plus longs. Vous
  pouvez donc désactiver cette fonction en réglant `darkroom/ui/anticipate_move`
  dans `darktablerc` sur 1,0. Si vous utilisez les touches du curseur pour vous
  déplacer, vous pouvez augmenter cette valeur à > 1,4 afin d'anticiper au moins
  un déplacement supplémentaire de 20 % de chaque côté. Lorsque le recalcul est
  déclenché par un changement de paramètre du module, par exemple une augmentation
  de l'exposition, seule la zone exacte affichée est calculée comme auparavant,
  pour une réactivité optimale.
  
- La fenêtre contextuelle (qui s'affiche lorsque vous cliquez avec le bouton droit)
  pour les curseurs avec une plage de 360° affiche désormais une roue chromatique
  ou une boussole. Si le curseur est limité à une plage plus petite (par exemple
  dans **Rotation et perspective**), vous pouvez basculer vers la plage complète
  en cliquant avec le bouton central. Un autre clic avec le bouton central
  restaurera la plage limitée (et le mécanisme de réglage fin normal).

- Lorsque la plage d'un curseur a été augmentée au-delà des « limites souples »,
  les zones supplémentaires désormais visibles ont une couleur légèrement différente.

- Pour que la rotation de la molette corresponde à l'effet de rotation de l'image,
  la plupart des directions des curseurs d'angle ont été inversées. Vous pouvez
  ajouter une vitesse « -1 » à tous les raccourcis auxquels vous êtes habitué.
  
- Ajout de nouveaux raccourcis clavier par défaut. Ceux-ci ne prendront effet que
  si les touches ne sont pas encore associées à des fonctions définies par
  l'utilisateur.

  - <kbd>c</kbd> : basculer les **lignes guide**.

  - <kbd>e</kbd> : définir la compensation d'exposition (équivalent à un clic
    droit sur le curseur d'exposition).

  - <kbd>alt+r</kbd> : définir la rotation de l'image (équivalent à un clic droit
    sur le curseur de rotation).

  - <kbd>alt+[</kbd> et <kbd>alt+]</kbd> : adjustment fin de la rotation.

- Différentes formes pour l'indicateur sur les curseurs peuvent désormais être
  sélectionnées dans **Préférences→Divers→Interface** (triangle, cercle, losange,
  barre). Nécessite un redémarrage

- Tous les boutons des barres d'outils de la **table lumineuse** et de la
  **chambre noire** conservent leur état activé d'une session à l'autre.
  La visibilité des boutons activés a été améliorée afin d'éviter toute
  confusion lors du redémarrage de Darktable et l'apparition d'artefacts
  dus à l'activation de certains outils tels que **Vérification de gamut**.

- Le curseur indiquant les vignettes sélectionnées a été rendu plus visible.
  Il est désormais plus grand et comporte une bordure afin d'assurer une
  meilleure visibilité sur les vignettes sombres.

## Améliorations des performances

- Optimisation des performances du module **3D LUT** (gain de vitesse de 5 % à 20 %).

- Accélération spectaculaire du premier démarrage d'une nouvelle installation lorsque
  la bibliothèque est stockée sur un disque dur ou un NAS plutôt que sur un SSD.

## Autres changements

- Le modificateur <kbd>Shift</kbd> permet maintenant de sélectionner uniquement
  les points de contour progressif sur les masques de fusion. Cela est parfois
  nécessaire lorsque le point de chemin et le point de contour progressif
  sont trop proches l'un de l'autre.

- Les préréglages hiérarchiques sont désormais pris en charge pour les modules
  utilitaires comme pour les modules de traitement.

- Le double dématriçage fonctionne désormais également en mode tuilage pour
  des performances OpenCL potentiellement meilleures et une pression moindre
  sur la mémoire du processeur.
  
- Ajout d'une compensation automatique de la sous-exposition cachée de l'appareil
  photo pour les modes Canon _Lighting Optimizer_, Nikon _Active D-Lighting_ et _HLG_,
  le mode Olympus _Gradation_, le mode Pentax _Dynamic Range Expansion_ et les modes
  Fujifilm _DR200_ et _DR400_. Cela affecte à la fois les modules **Exposition** et
  **Réduction du bruit (profil)**.

- Ajout d'un affichage en pourcentage RVB dans le module de sélection des couleurs.

- Il est maintenat possible de créer une zone de recadrage beaucoup plus petite
  (recadrage jusqu'à 99 % de la taille de l'image).

- La variable `$(ROLL.NAME)` dispose maintenant de niveaux optionnels
  `$(ROLL.NAME[n])`, où `n` doit être compris entre 1 et 5, ces niveaux suivent
  les mêmes règles que le pellicule, la valeur par défaut de `n` est 1, ce qui
  conserve le comportement précédent de `$(ROLL.NAME)`.

- Ajout d'une collection optionnelle de raccourcis clavier et souris pour
  contrôler les modules de traitement d'image. Installez-les en cliquant sur
  le nouveau bouton **Importer les extras** dans l'onglet **Raccourcis** des
  **Préférences**.
  
- L'option **Écraser** du module **Développement** de la **Table lumineuse**
  a été supprimée. Cette option était utilisée lors du collage de l'historique
  pour supprimer l'ancien historique avant de coller le nouveau. Elle est
  rarement utilisée et prêtait à confusion lors des opérations de
  copier/coller dans la chambre noire à partir de la pellicule, car cette
  option n'était visible que sur la table lumineuse. L'option a été déplacée
  dans la boîte de dialogue **Coller sélectivement**.

- Ajout d'un contrôle manuel du sous-échantillonnage chromatique pour
  l'exportation AVIF. Les utilisateurs peuvent désormais choisir entre les
  modes de sous-échantillonnage chromatique _auto_, _4:4:4_, _4:2:2_ et _4:2:0_
  indépendamment du paramètre de qualité, ce qui permet une meilleure
  optimisation du compromis qualité/taille pour les fichiers AVIF.
  
- Les raccourcis donnant le focus aux modules de traitement fonctionnent
  également si le panneau d'accès rapide a le focus, en s'adressant aux
  20 premiers curseurs ou menus déroulants de celui-ci.
  texte original : The processing modules/<focused> shortcuts also work
  if the quick access panel is "focused", addressing the first 20 sliders or
  dropdowns.

- Si seul le premier rotor d'un contrôleur MIDI est assigné, ceux dont
  le numéro est plus élevé s'adressent automatiquement aux éléments croissants
  de la même action ou aux actions suivantes. Cela permet une (ré)assignation
  rapide à l'action <focused> ou aux mimiques configurées avec, par exemple,
  le script Lua x-touch.
  Texte original : If only the first rotor on a midi controller is
  assigned, the higher umbered ones automatically address increasing
  elements of the same action or subsequent actions. This allows quick
  (re) assignment to he <focused> action or to the mimics set up with
  for example the x-touch Lua script.

- La possibilité de calculer le facteur de recadrage pour les appareils
  photo Olympus a été ajoutée.

- Lorsque vous créez des styles avec plusieurs images sélectionnées,
  cliquer sur le bouton **Annuler** ou appuyer sur la touche <kbd>ESC</kbd>
  dans la boîte de dialogue de style met désormais fin à l'ensemble du
  processus au lieu de passer à l'image suivante.

## Correction de bogues

- Correction de certains problèmes liés à la gestion des styles hiérarchiques dans le
  module styles.

- Correction de la restauration des collections basées sur des modules. Après avoir
  quitté darktable avec une collection basée sur des modules, la table lumineuse
  était vide après le redémarrage.

- Correction de certains problèmes de réinitialisation du module d'exportation.
  Les sections format et stockage n'étaient pas réinitialisées correctement.

- Correction d'un problème de corruption des fichiers sidecar lors
  d'importations volumineuses d'images avec des fichiers sidecar XMP.

- Correction d'un bug où la modification de la mise à l'échelle de l'image
  dans le module d'exportation influençait le résultat d'une tâche
  d'exportation en cours d'exécution.

- Nous nous assurons de toujours remplir entièrement la zone centrale
- de la **Chambre noire** lors d'un zoom à grande échelle.

- Forcer la mise à jour de l'horodatage de l'image **Heure de modification**
  lorsqu'un fichier sidecar est appliqué.

- Corrigé : Le glisser-déposer d'images sur la carte entraîne une attribution
  erronée de l'emplacement sur macOS.

- Préréglages automatiquement appliqués pour les images SRAW et les vrais
  monochromes.

- Correction d'un bug dans le réglage **Seuil des détails** des masques pour
  les fichiers RAW monochromes qui provoquait des plantages.

- Correction d'un problème lié au positionnement de la fenêtre principale
  de la **Chambre noire** dû à la précision des calculs. La précision est
  désormais au pixel près, ce qui évite tout déplacement dans certains cas.

- Correction d'un problème dans darktable-cli qui empêchait la détection
  des fichiers en entrée.

- Correction d'un problème de mémoire insuffisante qui pouvait bloquer
  Darktable sur les petits systèmes lors du traitement d'images volumineuses.

- Correction de la traduction du message contextuel affiché lors du survol
  du bouton préréglages des modules.

- Correction d'un problème dans `darktable-cli` qui empêchait la détection
  des fichiers d'entrée.

- Correction d'un problème lié à la lecture des fichiers TIFF contenant
  (à tort) des métadonnées spécifiques aux fichiers bruts à partir
  desquels ils ont été créés.

- Corrigé : les styles importés qui n'avaient pas de nom pouvaient
  provoquer le plantage de darktable au démarrage.

- Correction d'un bug entraînant des couleurs incorrectes dans la fenêtre
  principale de la chambre noire (principalement après l'utilisation d'un
  sélecteur de module) en raison de coefficients de couleur incorrects
  dans le module **Profil de couleur d'entrée**.

- Correction du support pour Wayland. L'interface utilisateur fonctionne
  désormais comme prévu et Darktable gère les profils ICC de `colord`.

- Correction de la dénomination des modules de traitement basée sur les
  préréglages lorsque le préréglage utilisé est renommé ou supprimé.

- Correction d'un bug dans `darktable-cli` où l'exportation d'une version
  dupliquée d'une image utilisait les **mots-clés** associés à la version
  de base au lieu des **mots-clés** qui lui étaient associés.

- Fixed a bug in `darktable-cli` where synonyms for tags attached to an
  image were ignored when exporting it.

- Correction d'un bug dans `darktable-cli` où les synonymes des
  **mots-clés** associés à une image étaient ignorés lors de son exportation.

- Correction d'un bug dans la table lumineuse qui pouvait fusionner plusieurs
  groupes lors de l'ajout d'une image à un groupe.

- Correction d'un problème d'impression qui ne se produit probablement que sur
  macOS. Lors de l'impression en mode paysage, la rotation de l'image n'est pas
  effectuée sur l'imprimante. Ainsi, seule une partie de l'image est imprimée
  au bas de la page. Ce problème n'est pas encore tout à fait compris à ce stade
  et n'a été signalé que deux fois. Si vous rencontrez ce problème, vous pouvez
  définir la variable suivante dans votre darktablerc pour forcer la génération
  de l'option CUPS paysage :

     `plugins/print/cups/force_landscape=TRUE`

- Correction de l'affichage éventuel d'un double curseur en forme de pouce sur
  la **Pellicule** dans la **Chambre noire**. De plus, l'arrière-plan des pouces
  pouvait apparaître comme sélectionné sur plusieurs images.

- Correction du traitement en **Chambre noire** après modification d'un profil de couleur.

- Pour les raccourcis de basculement des modules (tels que **activer**, **afficher**
  et **mettre en avant**), les effets **activé** et **désactivé** sont désormais
  respectés (ils ne basculent plus systématiquement comme auparavant).

- Correction d'une restriction trop stricte concernant la longueur des noms
  de fichiers dans le module de filigrane.

## Lua

### API Version

- API version is now 9.6.0

### New Features

- Added darktable.query_event() to check if an event is registered.

- Added collection-changed event that fires when the collection changes.

- Added darktable.configuration.share_dir and darktable.configuration.data_dir
  to expose the darktable data and share directories.

### Bug Fixes

- Check added to ensure view has changed before processing GUI events
  preventing hang on start.

- return a nil value instead of throwing a Lua error if the indexed element of
  the following Lua tables does not exist or if the table is empty:

  - `dt_lua_tag_t.#`

  - `dt_lua_film_t.#`

  - `dt_style_t.#`

  - `darktable.films.#`

  - `darktable.styles.#`

  - `darktable.database.#`

  - `darktable.collection.#`

- Ensure `darktable.database.get_image()` returns a nil, in all conditions,
  for an image that doesn't exist.

- Ensure translations are displayed in UTF-8 under Windows


### Add action support for Lua

### Other Lua changes

- N/A

## Notes

- When exporting to AVIF, EXR, JPEG XL, or XCF, selecting specific
  metadata (e.g. geo-tag or creator) is not currently possible. For
  AVIF, EXR, JPEG XL, and XCF formats, darktable will not include any
  metadata fields unless the user selects all of the checkboxes in the
  export module's preference options.

- Starting with release 5.4, Intel Macs and macOS versions older than 14.0
  are no longer supported.

## Changed Dependencies

### Mandatory

- N/A

### Optional

- N/A

## RawSpeed changes

- Canon EOS 2000D/1500D/Rebel T7/Kiss X90 color matrix was updated.
- Nikon Z 7 color matrix was updated.
- Nikon Z5_2 color matrix was updated.
- Sony ILCE-1M2 color matrix was updated.

## Camera support, compared to 5.2

### Base Support

- Canon EOS R1 (requires LibRaw 0.22-PreRC1 and later)
- Canon EOS R5 Mark II (requires LibRaw 0.22-PreRC1 and later)
- ???

### White Balance Presets

- ???

### Noise Profiles

- ???

### Missing Compression Mode Support

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Phase One other than IIQ L
- Sony HQ and downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### Suspended Support

Support for the following cameras is suspended because no samples are available on https://raw.pixls.us:

- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm IS-1
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Olympus SP320
- Phase One IQ250
- ST Micro STV680

## Translations

- ???
