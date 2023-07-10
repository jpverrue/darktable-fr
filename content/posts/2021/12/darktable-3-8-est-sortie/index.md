---
title: "Sortie de darktable 3.8"
date: "2021-12-26"
featured: true
categories: 
  - "actualites"
tags: 
  - "darktable"
  - "jpg"
  - "note-de-version"
coverImage: "images/dt-logo-3.8.0.png"
---

**Pascal Obry** a publié : [https://github.com/darktable-org/darktable/releases/tag/release-3.8.0](https://github.com/darktable-org/darktable/releases/tag/release-3.8.0)

L'article a été traduit avec l'aide de [https://www.deepl.com/translator](https://www.deepl.com/translator) (version gratuite en ligne).

Les liens de téléchargement des différentes verrsions de système d'exploitation sont à la fin de l'article.

Nous sommes fiers d'annoncer la nouvelle version de darktable, 3.8.0 !

La version github est ici : [https://github.com/darktable-org/darktable/releases/tag/release-3.8.0](https://github.com/darktable-org/darktable/releases/tag/release-3.8.0).

Comme toujours, n'utilisez pas le fichier tar.xz généré automatiquement par github mais seulement notre fichier tar.xz. les sommes de contrôle sont :

> $ sha256sum darktable-3.8.0.tar.xz 2e65c7c78d074ad218e3ef7a8c3051a8ea78f4a0406386667859645e5e4bf705 darktable-3.8.0.tar.xz $ sha256sum darktable-3.8.0.dmg fe1f1100bf3ca1acc11f69e2ffc6dbb58d11449ed85c086e0ecc52d5acb78e24 darktable-3.8.0.dmg $ sha256sum darktable-3.8.0-win64.exe c74d76f9feefc5648c41938bf430b261d3a3308df0ef87085be590b5a5d1110d darktable-3.8.0-win64.exe

Lors de la mise à jour à partir de la série 3.6.x actuellement stable, veuillez garder garder à l'esprit que vos modifications seront préservées durant ce processus, mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 3.6.x.

Il vous est fortement conseillé de faire une sauvegarde au préalable. Note importante : pour s'assurer que darktable peut continuer à supporter le format de fichier brut pour votre appareil photo, veuillez lire ce post sur comment/quels échantillons bruts vous pouvez contribuer pour vous assurer que nous avons l'ensemble complet d'échantillons bruts pour votre appareil photo sous licence CC0 !

Près de 3915 commits à darktable+rawspeed depuis 3.6 571 pull requests traitées 265 problèmes fermés

### Les grandes nouveautés

Le système de raccourcis clavier a été entièrement retravaillé et étendu pour vous permettre de de contrôler darktable avec d'autres dispositifs, par exemple, des dispositifs MIDI et les contrôleurs de jeux. Les raccourcis clavier/souris standards peuvent maintenant utiliser les mouvements de la souris (horizontaux, verticaux, diagonaux) ainsi que les pressions ainsi que des pressions multiples sur des boutons/taques et des pressions/clics courts ou longs.

Veuillez noter que tous les raccourcis que vous avez créés précédemment ne sont pas transférés à la nouvelle fonctionnalité et devront être redéfinis dans darktable 3.8.

Nouveau module de diffusion ou d'accentuation, vous permettant de simuler ou d'inverser les processus de diffusion pour reconstruire des images à partir d'un objectif. les processus de diffusion pour reconstruire des images à partir du flou de l'objectif, du trouble, filtre passe-bas du capteur, ou du bruit. Il peut également être utilisé pour simuler des taches d'aquarelle, augmenter le contraste local, simuler l'efflorescence ou appliquer un flou de surface. Des règles spéciales peuvent être définies pour des règles spéciales peuvent être définies pour diffuser spécifiquement sur ou le long des bords, ainsi que pour éviter de les rendre plus nets ou plus flous. les rendre flous.

Le nouveau module de flou de scène permet de synthétiser des flous de mouvement et d'objectif de manière paramétrique et physiquement précise. de manière paramétrique et physiquement précise. Ce module vous permet de définir la trajectoire du mouvement ou le diaphragme de l'objectif. diaphragme de l'objectif et génère ensuite le flou correspondant.

Le module de correction de perspective a été renommé en rotation et perspective et vous permet désormais de définir manuellement les paramètres de correction en traçant des lignes ou des rectangles sur l'image (repères). en traçant des lignes ou des rectangles sur l'image (reproduisant la fonction de correction de la distorsion trapézoïdale du module déprécié de recadrage et de rotation).

Ajout de la prise en charge de plusieurs images dans l'aperçu avant impression. La page peut être La page peut être remplie de plusieurs zones, chacune d'entre elles pouvant être déplacée et placée sur la page avec la possibilité de s'y accrocher. la page, avec la possibilité de s'accrocher à une grille pour plus de précision.

Un nouvel algorithme de démosaïque LMMSE a été introduit. Cet algorithme est particulièrement particulièrement adapté aux images à haute sensibilité ISO et/ou bruyantes.

Les guides de composition du module de recadrage sont désormais disponibles dans tout darktable et ne nécessitent plus l'activation du module de recadrage. et ne nécessitent plus l'activation du module de recadrage.

Le format Canon raw CR3 est désormais pris en charge (voir la liste des appareils photo pris en charge dans la section ci-dessous). section ci-dessous). Ce support est fourni par LibRaw et nécessite au moins la version exiv2 0.27.4 avec le support BMFF activé.

L'outil de profilage color checker, introduit dans darktable 3.4 en tant que partie du module de calibrage de couleur module d'étalonnage des couleurs, est maintenant normalisé par patch dans l'exposition pour éliminer l'effet l'effet de l'éclairage inégal et de la chute lors de la prise de vue des vérificateurs de couleur à main levée et sur place. Cela diminue fortement la moyenne résiduelle dE après l'étalonnage et aide sensiblement à récupérer les bleus foncés naturels tout en évitant les effets de la lumière. aide à retrouver les bleus foncés naturels tout en évitant les décalages jaunes dans les hautes lumières.

### Autres nouvelles fonctionnalités et modifications

Le module de débruitage (profilé) utilise désormais le mode ondelettes par défaut. par défaut en mode Y0U0V0 ont été améliorés.

Des boutons de retournement ont été ajoutés au module d'orientation (fonctionnalité déplacée (fonctionnalité déplacée de crop et rotate).

La gestion des travaux en arrière-plan a été supprimée des préférences.

Une grande partie du code spécifique à SSE a été supprimée, car le code généré par le compilateur est généralement plus rapide.

Le script darktable-generate-cache affiche maintenant les noms de fichiers et les ID des images.

Les correspondances de noms de fichiers dans le module collections sont maintenant plus rapides.

La gestion des masques est plus rapide.

L'ordre du module de traitement peut maintenant être appliqué automatiquement en fonction des propriétés de l'image. propriétés de l'image.

L'état des dossiers est correctement actualisé lorsqu'un montage est modifié.

Un sélecteur de couleur de zone peut être sélectionné en utilisant un clic droit en plus de l'option existante Ctrl+C.

Des variables de substitution ont été ajoutées pour les dimensions des images comme suit : $(SENSOR_HEIGHT) et $(SENSOR_WIDTH) pour les dimensions absolues des pixels du capteur ; $(MAXIMUM) pour les dimensions de l'image. absolue du capteur ; $(MAX_HEIGHT) et $(MAX_WIDTH) pour la taille de l'image brute ; et $(EXPORT_HEIGHT) et $(EXPORT_WIDTH) pour les dimensions taille de l'image finale après recadrage.

Plus de travail sur l'accélération du code dans de nombreuses routines différentes assurant une meilleure vectorisation et/ou une définition OpenMP. Notamment, les modules virage partiel, suppression de la brume etemoval et soften ont été améliorés.

Le préréglage du groupe de modules "débutant" prend désormais en compte le flux de travail choisi (affichage ou référence à la scène).

Le panneau d'accès rapide tient désormais compte du flux de travail choisi (affichage ou scène référencée).

Nouvelles options de tri basées sur la capture, l'importation, la modification, la dernière exportation et la dernière impression.

L'info-bulle pour le masque raster inclut désormais des informations sur le module source.

Les modules suivants ont été dépréciés :

- Recadrage et rotation - les fonctionnalités de ce module sont désormais partagées entre les modules Recadrage, orientation, et rotation et perspective.

Notez que le nouveau module de recadrage est désormais placé après le module de retouche afin de garantir que l'image complète puisse être utilisée comme zone source.

Une nouvelle option a été ajoutée pour vous permettre de choisir le moment de commencer à écrire modifications dans les fichiers XMP sidecar. Choisissez de : (a) ne jamais écrire XMP ; (b) d'écrire XMP dès que l'image est importée ; ou (c) d'écrire XMP seulement après que l'utilisateur ait modifié l'image dans la chambre noire.

La saisie du fuseau horaire a été améliorée dans le module de géolocalisation.

Une nouvelle préférence a été ajoutée pour choisir le nombre de collections récentes à afficher.

La prise en charge des classements a été ajoutée au module des collections, ce qui permet de créer des préréglages, par exemple pour sélectionner des collections récentes. des préréglages, par exemple, pour sélectionner les meilleures images de 2021.

Les fichiers PNG sont désormais pris en charge dans le module filigrane.

Les valeurs du module de sélection globale des couleurs sont désormais sélectionnables et peuvent être copiées dans le presse-papiers.

HSV a été ajouté comme option dans le module de sélection de couleur globale.

Le schéma de couleurs de la ligne de temps a été amélioré.

Le module Scopes (précédemment appelé histogramme) peut maintenant être déplacé vers le panneau de gauche.

Amélioration du rendu des couleurs pour les oscilloscopes de forme d'onde et de défilé.

Une nouvelle option d'oscilloscope de forme d'onde verticale a été ajoutée.

Les échantillons en direct peuvent maintenant être affichés dans le vectorscope.

Une option RYB a été ajoutée au vecteurscope.

Le module 3D lut a été déplacé après filmic dans le pixelpipe.

Des améliorations mineures de la convivialité ont été apportées à l'égaliseur de tonalité, en s'assurant que le curseur est affiché lors de la mise au point et que le module est activé lors du défilement.

Le réglage automatique des masques a été amélioré dans le module de l'égaliseur de tonalité.

De nouvelles icônes "baguette magique" sont désormais utilisées pour les actions d'accord automatique dans le module d'égalisation des tons.

La mise en mosaïque a été activée dans les modules balance des couleurs rvb, diffuse et filmique rvb. pour permettre le traitement de très grandes images.

Lors de l'analyse des fichiers XMP mis à jour, la fenêtre de synchronisation a été améliorée pour offrir plus de choix quant à la façon dont la synchronisation est effectuée.

Ajout d'un support de lecture pour le format de fichier HEIF/HEIC.

Ajout du support pour ARM64/Apple M1 comme cible de construction.

Ajout d'une préférence pour inverser le comportement du défilement de la souris vers le haut/bas sur les attributs de masque dessinés. attributs de masque. En même temps, et pour des raisons de cohérence, l'action de défilement vers le haut a été définie pour augmenter tous les attributs de masque par défaut.

Ajout d'un horodatage dans la boîte de dialogue d'importation de caméra pour des raisons de cohérence avec les autres boîtes de dialogue d'importation.

L'ordre actuel des modules est désormais affiché dans l'en-tête de l'ordre des modules afin de économiser de l'espace dans l'interface graphique.

L'entrée "ordre du module" est maintenant déplacée à la fin de la boîte de dialogue copier/coller pour une meilleure convivialité, car cette option est rarement utilisée.

Le module de tonalité fractionnée affiche désormais la teinte en degrés pour des raisons de cohérence avec les autres modules.

Les images rejetées dans la vue de la table lumineuse sont maintenant atténuées pour plus de clarté.

Le dernier album Piwigo sélectionné est maintenant mémorisé dans le module d'exportation.

Pour les utilisateurs et développeurs avancés, les options de construction OpenCL sont maintenant exposées dans le module darktablerc.

Le module des collections offre maintenant de nouveaux préréglages basés sur le temps de l'image pour compléter les préréglages existants basés sur la durée de l'image. pour compléter les préréglages existants basés sur l'heure d'importation.

Ajout d'un indicateur d'exigence sans bordure dans le module d'impression lorsque les marges sélectionnées par l'utilisateur sont inférieures aux marges matérielles. marges sélectionnées par l'utilisateur sont inférieures aux marges matérielles.

Ajout d'une option permettant d'afficher tous les modules de l'historique au sein du groupe de modules actif, sans tenir compte du fait que l'utilisateur n'a pas utilisé le module. groupe de modules actifs, qu'ils soient activés ou non activés.

Ajout d'un champ de recherche dans les préférences et les raccourcis de préréglage.

Amélioration de la gestion des courbes dans Filmic. Les courbes devraient être plus faciles à contrôler, car certains effets secondaires de certains paramètres sur d'autres ont été éliminés.

Ajout de la prise en charge de l'aperçu des vignettes pour les fichiers DNG dans le dialogue d'importation.

La documentation de darktable 3.8.0 comprend maintenant quatre (français, allemand, ukrainien, portugais brésilien) traduites (c'est la première fois que une documentation complète et traduite a été mise à disposition à la date de la date de sortie), entièrement intégrée dans le système de liens d'aide de darktable. du système. Des versions traduites des manuels epub et pdf sont également disponibles.

### Corrections de bogues

De multiples fuites de mémoire ont été corrigées.

Correction de l'équilibrage du vert dans le chemin de code du CPU RCD.

Sélection du meilleur illuminant pour les images DNG.

Lorsque vous essayez d'entrer dans une vue qui ne peut pas être utilisée (comme la vue d'accrochage où aucune caméra n'est attachée), assurez-vous de réinitialiser la combobox à la vue la vue précédente.

Correction des optimisations d'étalonnage pour le delta E dans le module d'étalonnage des couleurs.

Correction du focus peaking qui, dans certains cas, affichait de mauvais pixels aléatoires sur les bords. pixels erronés aléatoires sur les bords.

Correction du rafraîchissement lors du collage de tout ou partie de l'historique.

Correction d'un accès possible à des données non initialisées dans la démosaïque RCD.

Mise à jour des champs de métadonnées lors de l'application d'un preset.

Correction de la création du chemin interpolé de liquify pour être plus proche de ce que l'utilisateur attend. l'utilisateur.

Plusieurs problèmes spécifiques à Windows PATH ont été corrigés. De plus, les noms de chemin UNC sont désormais pris en charge.

Assurez-vous que les fichiers RAW+Jpeg gardent le même nom de fichier pendant la copie et l'importation.

Ajout d'une certaine cohérence dans l'augmentation/diminution de l'opacité des formes dessinées, qui fonctionnait de manière opposée aux autres formes. qui fonctionnait de manière opposée aux autres contrôles de masque.

Inversion de la rotation du vecteur de la force de liquification pour plus de cohérence.

Rendre cohérentes les métadonnées et le balisage concernant la sélection actuelle.

Correction de certaines erreurs d'arrondi dans les masques avec des angles vifs, qui créaient des discontinuités dans la zone du masque. des discontinuités dans la zone du masque.

Correction de l'indicateur du chargeur d'images, qui n'était pas correctement défini au moment de l'importation.

Correction d'un éventuel mauvais réglage dans l'étalonnage des couleurs lors du passage de fichiers Jpeg à des fichiers RAW.

Correction d'une mauvaise balance des blancs, rare mais possible, juste après l'importation d'une image ou lors de la réinitialisation de l'historique de développement. image ou lors de la réinitialisation de l'historique de développement.

### Lua

Passage de Lua 5.3 à Lua 5.4.

L'API Lua est maintenant 8.0.0.

Ajout des fonctions darktable.print_toast() et darktable.print_hinter() pour imprimer les messages toast et hinter respectivement.

Ajout du champ is_altered() au type de données dt_lua_image pour déterminer si une image a été modifiée depuis son importation.

Ajout de la fonction generate_cache() au type de données dt_lua_image afin de permettre pour qu'une image de cache mipmap puisse être générée sans avoir à exécuter la fonction darktable-generate-cache.

Ajout de la fonction darktable.gui.libs.snapshots.clear_snapshots() pour supprimer tout instantané.

Ajout de l'événement darkroom-image-loaded qui est déclenché lorsqu'une image est chargée dans la vue de la chambre noire. L'image est retournée.

Ajouté l'événement darkroom-image-history-changed qui est déclenché lorsqu'une image l'historique d'une image est modifié dans la vue chambre noire. L'image est renvoyée.

### Notes

La série de versions 3.8.x de darktable sera la dernière à supporter qui prend en charge macOS 10.7 et la construction avec Xcode 11.

La prochaine version majeure nécessitera au moins macOS 10.14 pour fonctionner et Xcode 12 pour construire.

Les modules dépréciés dans la version 3.4 ont été retirés du groupe des modules dépréciés. groupe de modules dépréciés. Les modules concernés sont : Zone System, Invert, Channel Mixer, Global Tonemap, Relight, Tonemap, Vibrance et Réglages de base. Ajustements.

### Dépendances modifiées

Passage de Lua 5.3 à 5.4.

Modifications de RawSpeed Support de la caméra, par rapport à la 3.6

### Support de base

- Canon EOS R
- Canon EOS RP
- Canon EOS R5
- Canon EOS R6
- Canon EOS 250D
- Canon EOS 850D
- Canon EOS 90D
- Canon EOS 1D X Mark III
- Canon EOS M6 Mark II
- Canon EOS M50
- Canon EOS M50 Mark II
- Canon EOS M200
- Canon PowerShot G5 X Mark II
- Canon PowerShot G7 X Mark III
- Fujifilm GFX50S II (compressé)
- Leica C (Typ 112) (3:2)
- Leica Digilux 3 (4:3)
- Leica M10 (dng)
- Ricoh GR II
- Sony DSC-HX95
- Sony ILCE-7M4
- Sony ZV-E10

Préréglages de la balance des blancs

- Canon EOS R (avec réglage fin)
- Canon EOS RP (avec réglage fin)
- Canon EOS R5 (avec réglage fin)
- Canon EOS R6
- Canon EOS M50 (avec réglage fin)
- Ricoh GR II

Profils de bruit

- Canon EOS R
- Canon EOS RP
- Canon EOS R5
- Canon EOS R6
- Fujifilm X100V
- Leica D-Lux 7
- Leica M10
- Leica SL (Typ 601)
- Panasonic DC-S5
- Panasonic DC-FZ91
- Panasonic DC-FZ92
- Panasonic DC-FZ93
- Panasonic DC-TZ90
- Panasonic DC-TZ91
- Panasonic DC-ZS70

Matrices de couleurs personnalisées Support suspendu

Aucun échantillon sur raw.pixls.us

- Canon EOS M2
- Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
- Fujifilm FinePix HS50EXR
- Fujifilm FinePix S6000fd
- Fujifilm FinePix S9600fd
- Fujifilm IS-1
- GoPro FUSION
- Kodak EasyShare Z980
- Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
- Leaf Credo 60
- Leaf Credo 80
- Leica D-LUX 6
- Minolta DiMAGE 5
- Nikon 1 J4
- Nikon 1 S1
- Nikon Coolpix P7700
- Nikon D1H
- Nikon D2H
- Nikon D3S
- Olympus E-10
- Olympus SP320
- Olympus SP570UZ
- Panasonic DMC-FX150
- Panasonic DMC-G2
- Pentax K200D
- Pentax K2000
- Pentax Q10
- Phase One IQ250
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

Comme toujours vous pouvez télécharger darktable pour Windows, Mac et GNU/Linux sur [https://www.darktable.org/install/](https://www.darktable.org/install/).
