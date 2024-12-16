---
title: "Version 5.0.0"
aliases:
  - "darktable-5-0-0"
date: "2024-12-21"
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-5.0.0.png"
---

La version 5.0.0 de darktable est sortie samedi dernier.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 5.0.0 !

La version github est disponible ici :
[https://github.com/darktable-org/darktable/releases/tag/release-5.0.0](https://github.com/darktable-org/darktable/releases/tag/release-5.0.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Si vous ne construisez que pour vous-même
sans créer de paquetage pour une distribution quelconque, le clonage du code source
dans git est un moyen encore plus pratique.

Les sommes de contrôle sont :

```
$ sha256sum darktable-5.0.0.tar.xz
??? darktable-5.0.0.tar.xz
$ sha256sum darktable-5.0.0-x86_64.dmg
??? darktable-5.0.0-x86_64.dmg
$ sha256sum darktable-5.0.0-arm64.dmg
??? darktable-5.0.0-arm64.dmg
$ sha256sum darktable-5.0.0-win64.exe
??? darktable-5.0.0-win64.exe
```

Lors de la mise à jour à partir de la série stable 4.8.x, gardez à l'esprit que
vos modifications seront préservées pendant ce processus, mais que la nouvelle
bibliothèque et la configuration ne seront plus utilisables avec la version 4.8.x.
Il est fortement conseillé d'effectuer d'abord une sauvegarde.

#### Note importante :
Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil
photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri).
Vous y apprendrez comment contribuer à la constitution de l’ensemble d’échantillons
d’images (sous licence CC0) pour votre boîtier.

Depuis darktable 4.8 :

- ??? commits to darktable+rawspeed
- ??? pull requests handled
- ??? issues closed

_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 5.0
toutes les contributions sont très appréciées. Veuillez consulter la
[documentation du projet](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable
5.0. Veuillez consulter le manuel de l'utilisateur pour plus de détails
sur les changements individuels (le cas échéant).

- Ce cycle de développement a inclus un grand nombre de changements qui
  améliorent l'expérience de l'utilisateur, comme le montre la section suivante.
  
## Améliorations de l'interface utilisateur (UI/UX)

- Ajout de styles spécifiques à l'appareil photo pour plus de 500 modèles
  afin d'obtenir un rendu JPEG plus proche de la réalité, plus proche du rendu
  des images JPEG produites par l'appareil photo.
  Ces styles n'affectent que le contraste, la luminosité et la saturation et
  n'essaient pas de correspondre à l'accentuation, au débruitage ou aux
  changements de teinte. Nous avons également ajouté un script Lua pour
  appliquer automatiquement le style approprié lors de l'importation et pour
  appliquer manuellement des styles à une collection d'images précédemment
  importées.

- Afin de réduire considérablement le temps entre l'invocation de darktable et
  l'apparition de quelque chose à l'écran, particulèrement lorsque l'utilisateur
  a une grande bibliothèque, ajout d'un écran d'accueil optionnel, montrant
  la progression du démarrage (incluant le temps estimé restant pendant
  l'analyse des fichiers sidecar mis à jour)

- L'interface utilisateur fournit désormais un retour d'information lors du
  traitement d'opérations de masse sur les images telles que le classement,
  l'étiquetage, l'application de styles et la gestion de l'historique des
  modifications (et l'annulation de ces opérations), au lieu de se figer
  silencieusement jusqu'à ce que l'opération soit terminée. Lorsque
  l'opération est en cours, darktable affiche désormais soit un curseur
  occupé (tel qu'un chronomètre ou un tourniquet), soit une barre de
  progression avec la possibilité d'annuler le reste de l'opération.

- Les tracés des masques dessinés affichent désormais deux poignées de Bézier
  par point de contrôle, qui peuvent être déplacées individuellement.
  Cela permet un contrôle plus précis des contours.

- Ajout d'un thème à fort contraste avec un texte blanc vif sur un fond gris foncé.

- Amélioration des infobulles pour les en-têtes des modules utilitaires afin
  de fournir plus d'informations sur ces modules.
  
- Ajout de conseils pour les nouveaux utilisateurs sur la **Table lumineuse**
  lorsqu'elle est vide.

- Ajout de deux nouvelles images de remplacement pour mieux identifier les images
  manquantes, non prises en charge ou corrompues. Lorsque l'on tente de modifier une
  de ces images, un message d'erreur approprié et plus spécifique s'affiche.

- Lors de la sélection d'un style dans le module **Exporter**, le survol du nom du
  style dans le menu contextuel affiche une vignette de prévisualisation de l'effet de
  l'ajout du style à l'image active (première image sélectionnée dans la table lumineuse,
  image centrale dans la chambre noire).
  
- Possibilité de sélectionner les modules utilitaires à afficher sur les panneaux latéraux
  dans les différentes vues.

  - Cliquez avec le bouton droit de la souris sur la zone de panneau vide située sous les
    modules pour accéder à un menu permettant de masquer ou afficher des modules. Cela permet
    entre autres, d'ajouter des modules supplémentaires à la **Chambre noire**, comme l'**Éditeur
    de métadonnées** ou les **Styles**.

  - Cela remplace les fenêtres d'options dans les préférences des modules **Collections** et
    **Collections récentes** pour afficher ou masquer ces dernières et afficher un
    bouton **Historique** dans le premier à la place. Les utilisateurs qui veulent conserver le
    module **Collections récentes** séparé devront le réactiver via le nouveau menu
    <kbd>Clic droit</kbd>.

  - Le menu contient également une option **Restaurer défaut** qui réinitialise la
    sélection et la position des modules dans la vue courante. D'autre part, dans la boîte de dialogue
    des **Préférences**, sur l'onglet **Général**, il y a un bouton **Réinitialiser les panneaux**
    des vues qui réinitialise toutes les vues, y compris la visibilité et la largeur
    des panneaux eux-mêmes.

- Dans la boîte de dialogue des **Préférences**, sur l'onglet **Chambre noire**, ajout d'une option
  pour échanger les panneaux latéraux droit et gauche.

- La première fois qu'un nouvel utilisateur appuiera sur la touche <kbd>Tab</kbd>, il sera
  averti que cette action a pour effet de masquer tous les panneaux et comment les faire
  réapparaître. Nous espérons que cela évitera toute confusion ou frustration.

- Il est maintenant possible de faire glisser les modules utilitaires en les prenant
  par leur entête, pour les repositionner sur les panneaux gauche et droit (table
  lumineuse) ainsi que verticalement (toutes les vues). Maintenez <kbd>Ctrl+Shift</kbd>
  pour éviter de déplier/replier les modules, avant de les faire glisser. Chaque vue peut
  ainsi avoir une disposition différente.

- Le glisser-déposer des modules de traitement dans le panneau droit de la chambre
  noire a été amélioré pour permettre un défilement automatique lorsqu'on atteint
  le haut ou le bas de la page et pour ne pas être perturbé lorsque des images sont
  glissées dans la zone.

- Amélioration du message affiché au démarrage lorsque la base de données est
  verrouillée par une autre instance de darktable.
  
- Amélioration de l'icône du bouton **Filtrer par label de couleur** qui affiche dorénavant
  l'acion souhaitée (union/intersection).

## Améliorations des performances

- Ajout de l'implémentation OpenCL de l'égaliseur couleur.

- Amélioration de la vitesse des opérations d'images en masse par amélioration de la
  vitesse d'écriture des sidecars et en déplaçant les mises à jour des sidecars pour de
  nombreuses opérations dans une tâche d'arrière-plan, ce qui permet à l'utilisateur de
  continuer avant que l'écriture de sidecars ne soit terminée.

- Accélération significative du chargement des fichiers PFM grâce à la parallélisation
  et à l'optimisation des boucles qui ont permis d'éliminer les traitements supplémentaires.

## Autres changements

- Pour les nouvelles installations, l'histogramme a été remplacé par la forme d'onde afin
  d'afficher des informations plus détaillées sur la couleur et la tonalité de l'image.

- L'affichage de la fonction d'évaluation de la couleur ISO 12646 est conservé jusqu'à ce qu'il soit
  désactivée par l'utilisateur.

- Le biais d'exposition peut maintenant être utilisé pour former des collections et comme
  filtre d'affichage.

- Amélioration de la visualisation de l'effet de l'**Égaliseur de couleurs**.

- Amélioration du support de débogage pour la vérification des résultats CPU versus GPU.

- Ajout de l'alias **Calibrite** pour **X-Rite ColorChecker** dans le module **Calibration des couleurs**.

- La recherche des fichiers sidecar mis à jour ignore désormais les différences d'horodatage
  de deux secondes ou moins.

- Le paquet d'installation pour macOS dispose désormais d'une image de fond pour guider
  l'utilisateur lors de l'installation de darktable.app.

- Modification de l'interface utilisateur de la boîte de dialogue d'importation pour
  faciliter la suppression des emplacements personnalisés.

- Nombreux cycles de nettoyage du code.

- La boîte de dialogue de copie sélective ne sélectionne plus aucun module par défaut.

- Ajout de la prise en charge de défaire/rétablir pour les actions effectuées sur le
  **panneau pellicule** dans la **chambre noire**.
  
- Dans la **Chambre noire**, ajout d'une action (liée à <kbd>Ctrl+x</kbd> par défaut)
  pour synchroniser le dernier module édité sur le module édité actuel de la sélection.

- Ajustement des paramètres internes de l'encodeur AVIF afin d'augmenter considérablement
  la vitesse d'encodage sans compromettre la qualité de sortie.

- Les mots-clés peuvent désormais être facilement copiés dans le presse-papiers via le
  menu contextuel du module **Mots-clés**.
  
- Le **Stockage cible Piwigo** du module **Exporter**, permet maintenant de spécifier un modèle
  de nom de fichier pour le fichier exporté.

- Le répertoire dans lequel darktable écrira le fichier journal sous Windows a été modifié
  en `%USERPROFILE%\Documents\Darktable`. Cela permet à l'utilisateur de localiser et visualiser
  facilement le fichier journal sans avoir à le chercher dans la documentation ou la FAQ.
  L'emplacement précédent se trouvait dans les sous-répertoires système du profil de
  l'utilisateur, ainsi que dans un répertoire caché (il était donc impossible de cliquer
  dessus dans l'explorateur de fichiers avec les paramètres système par défaut).

- L'importation de fichiers JPEG 2000 avec les extensions `.jpf` et `.jpx` est maintement
  possible.

- Ajout d'un indicateur visible dans le module **Calibration des couleurs** lorsque la section
  **Mappage des couleurs** comporte des paramètres non neutres qui affectent le rendu des couleurs.
  
- Ajout de nouvelles variables de substitution `$(IMAGE.TAGS.HIERARCHY)` pour insérer des
  tags avec une hiérarchie complète et `$(IMAGE.ID.NEXT)` pour insérer le numéro d'image (ID)
  à attribuer à l'image en cours d'importation, ce qui permet àu numéro d'image de faire
  partie du nom de fichier généré lors d'une opération Copier & importer.
  
- L'exportation vers le format JPEG XL à virgule flottante avec une qualité de 100 essaiera
  de le faire avec le moins de perte possible. Ceci est maintenant cohérent avec le
  comportement des formats JPEG XL intégraux.

- La visibilité des raccourcis qui peuvent être modifiés par les utilisateurs a
  été améliorée par l'utilisation du texte en gras

- Le réglage de l'exposition dans l'histogramme prend désormais en charge toutes les
  fonctions standard du shéma Bauhaus de darktable (<kbd>Ctrl+clic</kbd>,
  <kbd>Clic droit</kbd>...).

- Introduction de l'ordre des modules `v5.0` pour que, lors de l'exportation, la mise
  à l'échelle finale soit effectuée avant le module **Profil de couleur de sortie**.
  Cela résout certains problèmes de différence de couleur entre la vue de la chambre
  noire et les fichiers exportés.

- Ajout d'un support pour l'édition de n'importe quel échantillon du **Sélecteur de
  couleurs** en direct. En utilisant <kbd>Clic droit</kbd> sur un échantillon, il est
  possible de le modifier (en changeant l'emplacement et/ou la taille de la boîte)
  et d'ajouter un nouvel échantillon basé sur la modification, ou de stocker la
  modification dans un échantillon en direct existant.

- Ajout de nouvelles variables de substitution pour l'utilisation des
  champs de données EXIF. Les nouvelles variables sont  :<BR>
  `$(EXIF.FLASH)`,
  `$(EXIF.METERING)`,
  `$(EXIF.EXPOSURE.PROGRAM)`,
  `$(EXIF.WHITEBALANCE)` et
  `$(GPS.LOCATION.ICON)`.

- Activation de l'autocomplétion des variables dans le module **Filigrane**.

- Augmentation de la longueur focale maximale pour les préréglages de filtrage
  auto-appliqués à 2000 mm.

- Ajout d'un préréglage **Table étendue des couleurs** au module **Table correspondance
  couleurs** avec des gammes rouge/vert/bleu/gris à sept niveaux, des tons chair de
  type IT8/CC24 et divers patchs de couleur, pour des ajustements de couleur
  plus ciblés sur l'ensemble du spectre.
  
- Ajout de la prise en charge des balises EXIF `AnalogBalance` utilisée pour
  l'étalonnage des couleurs et `LinearResponseLimit` utilisée pour la
  reconstruction des hautes lumières.

- Si nous trouvons des données d'étalonnage des couleurs non prises en charge
  actuellement dans les balises spécifiques DNG, nous marquons l'image avec le mot-clé
  `darktable|issue|no-samples` pour une meilleure prise en charge.

- Prise en charge en lecture des fichiers HEIF avec compression AVC (H.264) et
  extension de fichier `.avci`.

- Ajout d'un support de lecture pour les images encodées en JPEG 2000 dans les
  conteneurs HEIF avec l'extension de fichier `.hej2`.

## Correction de bogues

- Corrigé : régression des performances lors de la régénération des miniatures.

- Corrigé : gestion des anciennes versions (2020) utilisant **Filmique RVB**.

- Diverses corrections OpenCL pour réduire les différences entre le traitement par
  le CPU et le GPU : conversion de l'espace colorimétrique, filtre de gradient de
  saturation dans l'égaliseur de couleurs.
  
- Corrigé : l'exportation de la galerie qui ne fonctionnait pas sous Windows.

- Corrigé : la découverte d'imprimantes dans la vue **impression**, qui pouvait
  entraîner l'absence d'imprimantes disponibles.

- Contournement du champ de date EXIF hors norme causé par un logiciel bogué.

- Corrigé : la lecture des profils de couleur intégrés dans les images PNG.

- Corrigé : certains cas limites dans le module **Recadrer**.

- Corrigé : crash lors du chargement d'un fichier `.gpx` corrompu dans la
  vue **Géolocalisation**.

- Corrigé : la gestion des préréglages dans le module **Exportater** qui
  n'enregistrait pas tous les paramètres.

- Corrigé : un problème dans **Filmique RVB** où l'un des paramètres pouvait être
  supérieur à la plage maximale autorisée, ce qui entraînait l'échec de la validation
  et la réinitialisation par défaut de l'ensemble des paramètres.

- Corrigé : l'enregistrement du module **Composite** pour qu'il fonctionne dans tous
  les cas (élimination de l'historique ou copier/coller de l'historique par exemple)
  afin qu'une image qui n'est plus référencée en tant qu'incrustation dans le module
  puisse être supprimée.
  
- Réinitialisation correcte des balises internes `darktable|style|<nom>` et
  `darktable|changed` lors de la réinitialisation de l'historique.

- Corrigé : crash dans le stockage des exportations Piwigo lorsque l'utilisateur
  n'est pas connecté au serveur Piwigo.

- Corrigé : un bogue dans le module **Exporter** où il était impossible d'exporter
  à nouveau un fichier si l'option **Sur conflit** → **Écraser si modifié** était sélectionnée.

- Corrigé : problème qui faisait que le double clic sur un libellé dans
  les modules de la chambre noire ne réinitialisait pas le contrôle.

- Le module **Composite** empêche désormais la sélection d'une image de composition qui
  conduirait à une boucle. Auparavant, seules les références directes (image #1 ↔
  image #2) étaient vérifiées ; cette vérification a été étendue aux chaînes (image
  #1 → image #2 → image #3 → image #1) de longueur arbitraire.

- Corrigé : un bogue dans le module **Composite** qui appliquait incorrectement un
  profil de couleur et créait ainsi une dominante de couleur indésirable et
  erronée. Ce bogue était une régression ajoutée juste avant la sortie de la
  version 4.8.
  
- Corrigé : un bogue dans le module **Calibration des couleurs** où le passage
  d'un illuminant à l'autre pouvait conduire à des réglages imprévisibles.

- Diverses corrections dans le module **Dématriçage**. Les options non utilisables
  sont désormais cachées. Correction du double dématricage pour les capteurs
  xtrans et le code OpenCL.

- Corrigé : un bogue dans le module **historique**, la création d'un style
  échouait si un style portant ce nom existait déjà.

- Corrigé : dessin des guides dans le cas où un module est déplié et actif.

- Veiller à ce que la liste des images dans la vue **Sélection** reste à jour
  lorsqu'elle est masquée.

- Corrigé : problèmes mineurs dans le module **Calibration des couleurs**.

- Corrigé : problèmes liés à des corrections erronées dans le code OpenCL
  du module **Reconstruire les hautes lumières** → **Peinture opposée**.
  
- Corrigé : calcul du rayon de flou de surface pouvant entraîner une
  sortie altérée.
  
## Lua

### Version de l'API

- La version de l'API est la 9.4.0

### Nouvelles fonctionnalités

- Ajout d'un nouvel événement, `inter-script-communication`, pour permettre
  l'envoi de messages d'un script en cours d'exécution à un autre script
  en cours d'exécution.

- Ajout d'une nouvelle fonction `darktable.util.message()`, pour l'envoi
  de messages à l'aide de l'événement `inter-script-communication\`.

- Ajout de nouveaux champs de données EXIF dans `dt_lua_image_t` :

  - `exif_whitebalance`

  - `exif_flash`

  - `exif_exposure_program`

  - `exif_metering_mode`

- Ajout d'un nouvel événement, `image-group-information-changed`, qui est déclenché
  chaque fois que les informations d'un groupe d'images sont modifiées.

### Correction de bogues

- Corrigé : bogue avec `dt_imageio_module_format_t.write_image` pour qu'il renvoie
  `true` en cas de succès et `false` en cas d'échec.

### Ajout d'un support d'action pour Lua

### Autres changements Lua

- Les scripts Lua sont maintenant mieux intégrés dans darktable et peuvent
  être entièrement traduits. Le design du gestionnaire de scripts a été
  retravaillé pour être plus en ligne avec les modules actuels de
  l'interface graphique de darktable.

## Notes

- Lors de l’exportation vers les formats AVIF, EXR, JPEG XL ou XCF,
  la sélection de métadonnées spécifiques (par exemple, géomarquage ou
  créateur) n’est actuellement pas possible. Pour les formats AVIF, EXR,
  JPEG XL et XCF, darktable n’inclura aucun champ de métadonnées à moins que
  l’utilisateur ne sélectionne toutes les cases à cocher dans les options
  de Préférence du module Exporter.

- la version 5.0 ne prend plus en charge les versions de macOS antérieures à 13.5.

## Changement de dépendences

### Obligatoire(s)

- Passage à la version 3.26 pour SQLite

### Optionelles

- n/a

## Changements RawSpeed

- Les appareils photo Fujifilm GFX utilisent désormais le recadrage fourni par le constructeur.

## Nouveaux Support d'appareils depuis la version 4,8

### Support de base

- ???

### Préréglages de la balance des blancs

- ???

### Profils de réduction de bruit

- ???

### Absence de prise en charge des fichiers raw compressés

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, some DJI, etc.) and lossy (Blackmagic)
- DNG 1.7 using JPEG XL (Adobe enhanced, Samsung Expert RAW)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- OM System 14-bit high resolution ORFs
- Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### fin de Support

La prise en charge des appareils suivants est suspendue car aucun échantillon n’est disponible sur raw.pixls.us :

- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm IS-1
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Minolta DiMAGE 5
- Olympus SP320
- Phase One IQ250
- Sinar Hy6/ Sinarback eXact
- ST Micro STV680

## Traductions

- ???


