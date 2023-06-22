---
title: "Version 4.4.0"
aliases:
  - "darktable-4-4-0"
date: "2023-06-21"
featured: true
pinned: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "dt_logo-4.4.0.png"
---

La version 4.4.0 de darktable est sortie aujourd'hui.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.4.0 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.4.0](https://github.com/darktable-org/darktable/releases/tag/release-4.4.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```  
$ sha256sum darktable-4.4.0.tar.xz
8887fc34abd97c4998b0888c3197e0c509d63bdeab2238906915319811f3b080  darktable-4.4.0.tar.xz

$ sha256sum darktable-4.4.0-x86_64.dmg
64af00c1ae160a6e95c459260c7789a431bb050f23afc62f87d6f23f3f06ced1  darktable-4.4.0-x86_64.dmg

$ sha256sum darktable-4.4.0-arm64.dmg
40e41dcf508398fc67b2bce3441ac80b5dc5886e86cad15cf214530f42bf730d  darktable-4.4.0-arm64.dmg

$ sha256sum darktable-4.4.0-win64.exe
23a4831ca52c707984b64cc6b9122526e96606ce86b04a0906fe32fd8327d956  darktable-4.4.0-win64.exe
```

Lors de la mise à jour à partir de la série stable 4.2.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus, mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.2.x.

Il est fortement conseillé de faire d'abord une sauvegarde.  

#### note importante : Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri). Vous y apprendrez comment contribuer à la constitution de l’ensemble d’échantillons d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.2 :  


- 2700 commits à darktable+rawspeed  
- 813 demandes de pull traitées  
- 97 problèmes fermés  
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 4.4 et que les contributions sont très appréciées. Veuillez consulter [le projet documentation](https://github.com/darktable-org/dtdocs#contributing) pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés
Voici un résumé des principales fonctionnalités ajoutées à darktable 4.4. La plupart de ces fonctionnalités sont décrites plus en détail dans le manuel de l'utilisateur.

- Permettre de définir plusieurs préréglages automatiques pour un module et de les appliquer les uns après les autres aux images correspondantes. Chaque préréglage après le premier créera une nouvelle instance de module juste au-dessus du module actuel (de sorte qu'il s'applique après).

 - Pour mieux voir quelle instance de module correspond à quel préréglage, l'étiquette du module est définie à partir l'étiquette du préréglage. Cette étiquette de module sera modifiée si certains paramètres du module sont modifiés. L'étiquette du module sera effacée si aucun préréglage ne correspond ou sera remplacée par la nouvelle étiquette du préréglage dans le cas contraire. Si l'étiquette du module a été éditée à la main, elle sera conservée telle quelle et ne sera jamais mise à jour automatiquement.

 - Une nouvelle option nommée "Préférences --> Chambre noire --> mise à jour automatique du nom du module" (activée par défaut) a été introduite pour permettre de désactiver complètement la mise à jour automatique de l'étiquette du module.

 - Les paramètres par défaut de certains modules ont été retravaillés pour les rendre plus facilement utilisables dans les copier/coller, les préréglages et les styles.

- De nombreux modules ont des paramètres par défaut basés sur les métadonnées de l'image ou le flux de travail actuel. Par exemple :
  - "Exposition" : dans le flux de travail relatif à la scène, l'exposition est ajustée à l'aide de la valeur de compensation d'exposition EXIF,
  - "Réduction du bruit (Profil)" : spécifique à l'appareil photo et à la sensibilité ISO,
  - "Correction des objectifs" : spécifique à l'appareil photo, l'objectif, la focale et la distance,
  - "Courbe de base" : spécifique au capteur de l'appareil photo,
  - "Balance des blancs" : spécifique aux métadonnées EXIF,
  - "Orientation" : spécifique aux métadonnées EXIF,
  - "Calibration des couleurs" : spécifique aux métadonnées EXIF.
  
   Pour tous ces modules, il est désormais possible de coller des paramètres tout en s'assurant que les métadonnées d'image appropriées sont utilisées pour définir les paramètres du module. Pour ce faire, il suffit de cocher+ la colonne "Réinitialiser" dans les boîtes de dialogue des préréglages et des styles, ce qui fait que le module se comporte comme si l'on avait cliqué sur son bouton de réinitialisation.

   Pour la création des préréglages, une nouvelle option peut être sélectionnée dans la boîte de dialogue pour que le préréglage utilise les paramètres par défaut du module sur lequel il est appliqué. L'option s'appelle "Réinitialiser tous les paramètres du module à leurs valeurs par défaut".

  Cette fonctionnalité nous a permis de nettoyer un certain nombre de hacks spécifiques à certains modules qui permettaient auparavant d'obtenir des fonctionnalités similaires (même si c'est de manière plus limitée).

- L'option de configuration du flux de travail par défaut (préférences --> traitement)
  > l'option a été ajustée pour incorporer l'ancien flux de travail relatif à l'affichage et pour inclure le nouveau module sigmoïde. Les options sont désormais les suivantes :
  - Relatif à la scène (Filmique RVB) -- par défaut
  - Relatif à la scène (Sigmoïde)
  - Relatif à l'affichage (Ancien)
  - Aucun

  Avec ces nouvelles options, le module Calibration des couleurs et l'ordre des modules relatifs à la scène seront automatiquement appliqués pour tous les flux de travail, à l'exception de "Relatif à l'affichage (Ancien)", qui continuera à utiliser uniquement le module de balance des blancs pour l'adaptation chromatique. La valeur entre parenthèses représente le module par défaut utilisé pour le mappage des tons (filmique/sigmoïde). En mode "Ancien", la courbe de base sera utilisée pour le mappage des tons et en mode "Aucun", aucun module de mappage des tons ne sera appliqué.
  
  Enfin, en combinant le flux de travail "Aucun" et les deux nouvelles fonctionnalités ci-dessus ("Prise en charge de préréglages multiples" et "Réinitialisation des paramètres par défaut basée sur les métadonnées"), il est possible de créer n'importe quel autre type de flux de travail. Par exemple, il est possible d'utiliser Sigmoïde avec le module de balance des blancs.

- Ajout de la prise en charge des "Color Harmony Guide" dans le vectorscope RJB.

  Il y a 9 guides d'harmonie des couleurs proposés :
  - Monochromatique
  - Analogique
  - Analogique complémentaire
  - Complémentaire
  - Complémentaire divisé
  - Dyade
  - Triade
  - Tétrade
  - Carré

    Ces guides peuvent être utilisés pour modifier les couleurs des zones clés d'une image afin qu'elles correspondent à l'une des harmonies de couleurs. On peut voir les guides d'harmonie des couleurs un peu comme les guides de composition, mais liés aux couleurs et non à la composition.

- Une opération globale <kbd>clic droit et glisser</kbd> a été ajoutée pour  permettre de corriger la rotation de l'image sans ouvrir au préalable le  module Rotation et perspective. Cette opération peut être utilisée à condition que le module en cours d'utilisation n'utilise pas déjà ce raccourci à d'autres fins.

- La fonctionnalité de masque dessiné a été entièrement revue avec un grand nombre de modifications et de corrections :

  - Les options "lissage du pinceau" et "pression du stylo" ont été déplacées de la boîte de dialogue des préférences globales vers une nouvelle section dans le gestionnaire de masques, afin qu'elles puissent être modifiées pendant le dessin et que des raccourcis puissent leur être attribués.

  - Les curseurs d'opacité, taille et de dureté de la forme du masque dessiné dans le gestionnaire de masques utilisent désormais une échelle logarithmique et le défilement sur ces curseurs permet d'effectuer des ajustements relatifs, tout comme <kbd>Shift+scroll</kbd> sur la forme elle-même. Comme pour les autres curseurs, <kdb>Ctrl</kbd> ou <kdb>Shift</kbd> peuvent être utilisés pour effectuer des ajustements fins ou grossiers (de la même manière avec les raccourcis activés). Les raccourcis assignés aux curseurs peuvent être utilisés pour ajuster la taille/dureté du pinceau pendant le dessin.

  - Un cinquième opérateur a été ajouté au gestionnaire de masques pour permettre de combiner des formes dessinées en mode "addition". Cela permet de répéter des coups de pinceau avec une faible opacité pour les superposer les uns sur les autres afin d'augmenter la force du masque. Ce mode est désormais le mode par défaut pour les formes de pinceau.

  - Il est désormais possible de modifier l'opérateur de réglage (mode) pour toutes les formes d'un groupe à partir du menu contextuel du gestionnaire de masques.
 
  - Certaines actions du menu du gestionnaire de masques pouvaient auparavant être activées alors qu'elles n'avaient aucun impact dans l'image dans certains contextes. Les actions de déplacement vers le haut et vers le bas sont donc désormais désactivées pour le premier et le dernier élément d'un groupe respectivement, et il n'est n'est plus possible de choisir un opérateur (mode) pour le premier élément d'un groupe.

  - L'ordre de tri des formes dans les groupes de gestionnaires de masques a été inversé, de sorte que la forme la moins bien classée se trouve au bas du groupe. L'ordre de tri des formes en dehors d'un groupe a également été également été modifié pour des raisons de cohérence.

  - Il est désormais possible d'ajouter tous les types de masques en continu dans le gestionnaire de masques.

  - Correction d'un problème où la brosse n'était pas correctement affichée après avoir été créée à partir du gestionnaire de masques.

  -  Un crash lors de la création de dégradés à partir du gestionnaire de masques a également été corrigé.
 
  - Pour toutes les formes, l'état modifiable est désormais correctement défini après la création, ce qui permet de déplacer et de redimensionner les différentes parties des formes.

  - Correction d'un problème d'affichage lors de l'édition d'un nom de forme dans le gestionnaire de masques.

  - Correction de l'état des opérateurs d'édition dans le gestionnaire de masques -- Lorsque l'on déplace un masque vers le haut ou vers le bas, nous nous assurons maintenant que le premier masque n'a pas d'opérateur et que le second a toujours un opérateur assigné. Si aucun opérateur n'a encore été défini, l'opérateur par défaut (union) est utilisé.

  - Lorsque vous utilisez un raccourci pour ajouter des formes à un masque dessiné (mélange), le mode de mélange passe automatiquement à "masque dessiné" ou "masque dessiné et paramétrique", en fonction de ce qu'il était auparavant, de sorte que toute forme nouvellement créée affecte réellement l'image.

  - Dans le mode de mélange "masque dessiné", il existait auparavant une option "inverser le masque" qui avait la même fonctionnalité que l'option "inverser la polarité". Comme les deux faisaient la même chose, l'option "inverser le masque" a été supprimée.

  - Le dessin des masques a été retravaillé pour s'assurer que tous les types de masques sont dessinés de la même manière - la zone centrale, la bordure et les segments en surbrillance sont désormais affichés de manière cohérente. Le segment en surbrillance est désormais plus visible, en particulier pour le masque de pinceau, où le segment en surbrillance était à peine distinguable en raison d'un bogue.

  - Dans les dialogues de style et de copier/coller, une nouvelle colonne a été ajoutée pour indiquer si un module utilise un masque (dessiné/paramétrique/rastérisé) à l'aide de l'icône de masque standard.

  - L'édition des masques dessinés a été améliorée - il est maintenant plus facile de sélectionner les points de contrôle des masques et les segments de chemin (dans certains cas, il était facile de sélectionner accidentellement l'ensemble du masque de chemin plutôt qu'un seul segment). Le rendu des masques sur le canevas a également été amélioré pour une meilleure cohérence entre les types de formes.

  - Le tracé du pinceau est désormais légèrement plus transparent afin de mieux voir l'image sous-jacente.

## Amélioration des performances

L'un des points forts de cette version est le nombre d'améliorations des performances :

- Tout le code spécifique SSE2 des modules suivants a été supprimé (car le code parallèle optimisé généré par le compilateur est plus rapide) ou le code optimisé dans les modules suivants. Cela conduit à un gain de vitesse de 5 % à 40 % :
   - "Homogénéiser" (Maintenant appelé "Homogénéiser ou postériser" voir plus bas)
   - "Filtre dégradé"
   - "Profil de couleur d'entrée"
   - "Table correspondance couleurs"
   - "Cadre décoratif"
   - "Flou de surface"
   - "Vignette"
   - "Retouche"
   - "Réduction du bruit (profil)"
   - "Inverser" (déprécié)
   - "Contraste local" (en mode Laplacien)
   - "Filtre passe-bas"
   - "Niveaux RVB"
   - "Profil de couleur d'entrée"
   - "Faible lumière"
   - "Velvia"
   - "Virage partiel"
   - "Docteur néga"
   - "Calibration des couleurs" (CIECAM16, Bradford linéaire, XYZ et Bradford non linéaire).
   - "Filmique" (ancienne version, non RVB, dépréciée)
   - "Filmique RVB" (y compris la reconstruction des hautes lumières)"
   - "Balance des couleurs" (ancienne version, non RVB)
   - "Balance des couleurs RVB"
   - "Niveaux (ancienne version, non RVB)"
   - "Lumière d'arrière-plan" (Déprécié)
   - "Liquéfier"
   - "Mappage des couleurs"
   - "Filtre passe-haut"
   - "Ombres et hautes lumières"
   - "Correction des objectifs"
   - "Grain"
   - "Monochrome"
   - "Reconstruction des hautes lumières" (mode peinture opposée)

Les améliorations apportées à un certain nombre de routines de base ont également permis de gagner en rapidité :

   - Les algorithmes d'interpolation (Bicubique, Bilinéaire, Lanczos2, Lanczos3) utilisés par les modules "Recadrer et pivoter" (déprécié) et le nouveau module "Rotation et perspectives".

   - Le générateur gaussien utilisé par de nombreux modules : "Censure", "Réduction du bruit (profil)", "Filtre passe-bas", "Diffusion et netteté", "Suppression de franges", "Aberrations chromatiques RAW", "Courbe de base", "Correction de la perspective", "Filmique RVB", "Retouche", "Égaliseur de tons" et "Zone Système" (obsolète).
 
   - Le filtre box blur (flou de boîte) utilisé par :
     - le focus peaking (Mode zones nettes),
     - le filtre guidé des masques paramétriques,
     - les nouveaux algorithmes de récupération des hautes lumières,
     - ainsi que les modules "Lumière d'arrière-plan", "Filtre passe-haut", "Suppression de la brume" et "Effet Orton (adoucir)".

   - L'agorithme "ondelette à trous évitant les bords" utilisée par les modules "Égaliseur de contraste" et "Réduction du bruit (profil)".

   - Certaines parties du filtre bilatéral ont été améliorées pour de meilleures performances. Ce filtre est utilisé dans de nombreux modules tels que "Monochrome", "Filtre passe-bas", "Ombres et hautes lumières", "Censure", "Retouche", "Mappage des couleurs", "Rotation et perspective" et "Contraste local". 

   - Tous les modes de fusion en Lab et RVB pour les flux de travail "relatif à l'affichage" et "relatif à la scène" ont été optimisés.

   - Le calcul du masque de luminance pour le module "Égaliseur de tons".

   - le chargeur pour le format des fichiers JPEG 2000.

   - Les matrices d'adaptation des couleurs ont été transposées pour permettre la vectorisation.

   - L'opération "Acquérir des grappes" dans le module "Mappage des couleurs" a été accélérée d'un facteur de 30 à 200, ce qui rend les résultats quasi instantanés dès que l'on clique sur le bouton.

- Le code du Pixelpipe et les stratégies de mise en cache ont été réécrits, ce qui a permis d'améliorer considérablement les performances lors du développement dans la chambre noire.

- Ajout du support OpenCL au module Sigmoïde.

- Ajout du support OpenMP à l'export XCF ainsi qu'au chargeur RGBE.

- Amélioration des performances de la "Reconstruction des hautes lumières" dans le mode "peinture opposée" en fournissant une implémentation OpenCL et en utilisant la mise en cache interne dans la chambre noire.

- Le mode Laplacien guidé du module "Reconstruire les hautes lumières" est désormais moins gourmand en mémoire (avec une économie d'environ 40 %) et ses performances sont nettement améliorées, ce qui permet d'appliquer par défaut un plus grand nombre d'itérations de récupération.

- Les modifications successives apportées aux curseurs et autres widgets (par exemple en les faisant glisser, en les faisant défiler ou en utilisant des raccourcis) ont été rendues plus réactives en créant moins d'enregistrements d'annulation. Cela rend également l'utilisation de la fonction annuler/refaire plus efficace, car vous n'êtes plus obligé de passer en revue chaque micro-modification.

## Autres changements

- La section filtres de  la boîte de dialogue pour la création / modification des préréglages a été retravaillée  pour mieux montrer la relation entre les formats RAW, non RAW et les formats HDR / monochrome  / couleur. Cela permet d'éviter les confusions et la création de préréglages qui ne sont en fait jamais appliqués.

- Amélioration du widget de sélection de la plage ISO pour la boîte de dialogue d'application automatique des préréglages.

- Les raccourcis assignés aux préréglages ou aux styles s'affichent lorsqu'on les survole dans leur menu.

- Un clic gauche prolongé sur un préréglage gardera le menu des prééglages ouvert afin que vous puissiez rapidement passer d'un préréglage à l'autre pour voir l'effet sans avoir à cliquer à plusieurs reprises sur le bouton du préréglage pour rouvrir le menu. Vous pouvez également faire utiliser le défilement sur le bouton de préréglage pour passer aux préréglages précédents/suivants (comme vous pouvez déjà le faire à l'aide des raccourcis).

- Deux nouveaux préréglages de "netteté" sur le module "Diffusion ou netteté" ont été ajoutés. Un "Netteté" et un autre "Netteté : Forte" avec un effet plus prononcé viennent compléter "Netteté : rapide"

- Révision du code du sélecteur de couleurs. Les sélecteurs ne sont plus exécutés inutilement dans de nombreux cas, ce qui permet d'accélérer le processus. Le code du sélecteur est désormais adapté pour les processeurs contemporains. Il utilise les fonctionnalités récentes d'OpenMP, ce qui permet d'obtenir un code plus succinct. Lorsqu'il est utilisé via le module "Filmique", le sélecteur n'exécute plus qu'une passe de débruitage qui prend du temps (dans ce cas, l'élimination du bruit rend le réglage automatique plus efficace).
  Plus d'avertissement lorsque l'on travaille sur des images monochromes.
  Divers autres nettoyages, dédoublonnages, optimisations, et plus  généralement du rangement.

- Tous les boutons de sélecteur de couleur qui ne l'étaient pas encore, sont maintenant accessibles via des raccourcis et les scripts lua.

- Modernisation du code de calcul de l'histogramme. Suppression du code SSE (qui n'apporte aucun gain de vitesse), mais l'utilisation de ce dernier comme modèle pour le code optimisé utilisant les fonctionnalités récentes d'OpenMP.
  Suppression de divers bouts de code inutilisés, et fournir une API interne cohérente. Dans certains cas, ce code produira des résultats légèrement plus précis et dans beaucoup de cas, le nouveau code utilise beaucoup moins de mémoire.

- L'interface graphique de l'histogramme a été retravaillée. Les boutons de contrôle ont été divisés en deux groupes : sur le côté gauche, une série de boutons pour passer d'un mode d'histogramme à l'autre (histogramme, forme d'onde, parade RVB, vectorscope). Sur le côté droit, les boutons qui contrôlent l'aspect de chaque mode (canaux RVB, orientation, type de vectorscope). Pour le vecteoscope RVB, une série de boutons a été ajoutée pour visualiser les lignes de guidage des harmonies de couleurs les plus courantes.

- Conversion du widget de zoom de la fenêtre de navigation en un menu déroulant standard pour mieux s'adapter à l'interface de darktable.

- La logique de zoom dans la chambre noire a été retravaillée afin de rendre les étapes du zoom plus uniformes d'un point de vue perceptif pour toutes les tailles d'image.

Une nouvelle option (préférences --> chambre noire --> bouton du milieu de la souris zoome à 200 %) a été ajoutée pour contrôler le comportement du zoom du bouton central de la souris dans la chambre noire. Sélectionnez cette option pour alterner entre ajustement et 200 % ; désactivez l'option pour alterner uniquement entre ajustement et 100 %. Dans ce dernier cas, vous pouvez accéder au zoom à 200 % avec <kbd>Ctrl+clic-central</kbd>.

- Les instantanés ne sont plus invalidés lorsque l'historique est modifié (compressé ou réinitialisé). Tous les instantanés sont désormais stockés avec leur historique complet et peuvent être reconstruits correctement.

- La vue de la liste des instantanés a été redessinée, alignant son affichage sur celui du module historique. En même temps, l'étiquette du module est maintenant affichée dans la liste et peut être éditée avec <kbd>Ctrl+clic</kbd>.

- Les modules suivants sont obsolètes et ne pourront plus être sélectionnés dans une prochaine version (ils resteront toutefois disponibles pour les anciennes éditions) :
  - niveaux (utilisez plutôt les niveaux rgb)
  - contraste luminosité saturation (utiliser la balance des couleurs RVB à la place)

- La taille de la bordure ISO 12646 a été réduite tout en restant dans la taille recommandée.

- Le groupe de modules "par défaut" a été supprimé et il est désormais conseillé d'utiliser l'un des groupes de modules référencés par la scène.

- Ajout du support pour le chargement des images QOI et FITS et pour l'écriture des métadonnées au format XCF (voir les notes ci-dessous).

- Les métadonnées Exif des images AVIF, HEIC et JPEG XL sont lues à l'aide des bibliothèques natives si Exiv2 ne le supporte pas.
 
- Les données Exif sont maintenant écrites dans le bloc PNG d'EXIF si vous utilisez une version d'Exiv2 plus récente que la version 0.28.x ou plus récente -- Il s'agit de la nouvelle méthode standard pour stocker les données Exif dans les PNG.

- Les masques sont exportés en tant que canaux supplémentaires dans les fichiers EXR.

- Réactivation du chargement des images BigTIFF en essayant d'abord le lecteur natif basé sur libTIFF.

- L'exportation et la génération de vignettes ont été repensées afin d'éliminer certains bricolages qui s'étaient accumulées. Cela devrait permettre d'améliorer la taille de l'exportation.

- Diverses améliorations de l'interface de débogage :
  - `-d common` fournit des informations plus précises et devrait être utilisé pour les rapports de bogues au lieu de `-d all`.
  - `-bench-module <modulea,moduleb>` effectue une analyse comparative des modules spécifiés.
  - `--dump-pipe <modulea,moduleb>` écrit les données d'entrée et de sortie des modules spécifiés sous forme de fichiers pfm à des fins d'inspection.

- Amélioration de la prise en charge de la correction des objectifs basée sur les métadonnées intégrées.
  - Ajout de la prise en charge des fichiers DNG,
  - L'échelle et les aberrations chromatiques peuvent maintenant être ajustées,
  - Ajout d'un bouton de mise à l'échelle automatique.
  - Amélioration des performances globales du module d'environ 8 %.
  - Un algorithme amélioré pour la correction de l'objectif basée sur les métadonnées intégrées a été ajouté au module. Il améliore les corrections de distorsion et de vignettage pour les images Fujifilm et Sony prises en charge.
  - La prise en charge des fichiers bruts des caméras Fujifilm X-Trans I/II/III a été ajoutée.

- Des en-têtes de section ont été ajoutés à la liste déroulante "trier par" dans le panneau supérieur (fichiers, heures, etc.).

- Lorsque le module "Recadrer" reçoit le focus et passe à une vue non recadrée de l'image, les zones de recadrage autour des bords de l'image s'allument brièvement pour indiquer qu'elles peuvent maintenant être déplacées.

  Tant que le rognage couvre la totalité de l'image (et qu'il est donc impossible de le déplacer par glissement), la zone sensible pour le glissement des coins et des bords est élargie.

- Bien que le module "Recadrer", affiche l'image complète pour faciliter les ajustements, il ne déclenche pas de recalcul du pixelpipe inutile, jusqu'à ce que le module perde le focus (par exemple en passant à un autre module ou en réduisant le module lui-même), auquel cas le nouveau recadrage est utilisé pour redimensionner. Si des raccourcis sont utilisés pour apporter des modifications au recadrage sans donner le focus au module, ils seront tout de même mis en œuvre immédiatement.

- Suppression du bouton "valider" du module "Recadrer" car il n'était plus utilisé.

- La hauteur des widgets et des listes redimensionnables peut désormais être modifiée en faisant glisser leur partie inférieure. La méthode précédente, qui consistait à faire défiler l'écran tout en maintenant la touche <kbd>Ctrl</kbd> enfoncée, a été remplacée par <kbd>shift+alt+défilement</kbd> (et une note a été ajoutée à toutes les infobulles de manière cohérente). Cela permet de libérer <kbd>ctrl+scroll</kbd> pour affiner les changements dans les niveaux RVB ou l'histogramme (pour modifier l'exposition ou le niveau de noir). Dans le navigateur (partie centrale de la table lumineuse), <kbd>ctrl+scroll</kbd> ajustera le niveau de zoom sans limites, comme il le ferait dans la zone centrale.

- Le nom de l'instance du module dans la chambre noire a été modifié afin qu'il soit plus clairement séparé du nom du module (à l'aide d'un séparateur en forme de "puce"). Le nom de l'étiquette dans le module historique a également été mis à jour en conséquence.
 
- Amélioration de l'affichage du widget des scores (étoiles) dans les filtres de collections et le panneau supérieur. Il devrait être plus lisible avec un meilleur contraste et un remaniement de certaines icônes.

Le filtre de recherche dans le module des filtres de collection et le panneau supérieur a été amélioré pour permettre également la recherche par marque et modèle d'appareil photo.

- Dans la table lumineuse, les raccourcis vers l'aperçu : "volatil"<kbd>w</kbd> (par défaut) et "maintenu" <kbd>f</kbd> (par défaut) mènent maintenant à la même action -- Auparavant, il y avait deux actions "aperçu plein écran", l'une avec et l'autre sans détection de mise au point. La détection de la mise au point peut maintenant être sélectionnée (dans les raccourcis) par le biais d'un élément, et maintenue ou basculée via effet. Tous les raccourcis mappés sont affichés dans l'infobulle du bouton de présentation de l'aperçu.

- Un copier-coller complet est toujours effectué en mode écrasement (remplacement complet de l'historique de la cible), puisque dans la plupart des cas, l'utilisation du mode empiler n'est pas la bonne solution. Par exemple, pour certains modules, il n'est souvent pas utile d'ajouter des instances supplémentaires.

- L'infobulle du style affiche immédiatement les détails du module en attendant que l'image de prévisualisation soit calculée.

- Les infobulle des outils de forme du module "Liquéfier" sont désormais cohérentes avec les autres outils de masque.

- Suppression de l'option de configuration "Dématriçage pour le mode chambre noire zoomé". Cette option n'est plus utile maintenant que le cache du pixelpipe a été amélioré. Elle peut également entraîner de légères différences. 

- Lecture de la distance de mise au point pour les boîtiers Nikon Z.

- Modification de la lecture des métadonnées "créateur" à partir du modèle d'échange d'informations IPTC pour préférer "By-line" à "Writer/Editor". Lecture des métadonnées de date/heure et de description à partir des propriétés couramment utilisées.

- Le dessin de la flèche qui relie les formes source et cible dans le module de retouche a été retravaillé pour être plus cohérent entre les formes. Toutes les formes source/cible sont désormais reliées par une flèche plutôt que par une simple ligne et sont rendues de manière à éviter de traverser les formes elles-mêmes (en reliant les bordures source/cible les plus proches).

- Affichage de la longueur focale équivalente "full frame" et du facteur de recadrage dans le module d'information sur l'image.

- Ajout d'options dans le module "Filigrane" pour un contrôle plus fin de l'échelle du filigrane. En association avec le nouveau modèle "texte à taille fixe", il est désormais possible d'insérer du texte avec une taille de police constante.

- Prise en charge de l'anneau de l'encodeur et des lumières des boutons du Behringer X-Touch Compact via midi. Les pressions sur les encodeurs non mappés retombent pour réinitialiser l'encodeur.

- Les boutons midi mappés à l'effet de réinitialisation d'un curseur ou d'un combo (soit directement, soit via fallback, comme la rangée sous les faders du X-Touch Compact) s'allument si la valeur actuelle n'est pas la valeur par défaut.

- La réinitialisation d'une combobox comportant des sous-titres (en double-cliquant ou via un raccourci) choisi désormais le premier élément sélectionnable.

- Les demandes de changement d'image dans la chambre noire (via <kbd>espace</kbd>, <kbd>espace arrière</kbd>, <kbd>clic</kbd> dans le bandeau) étaient auparavant ignorées si un calcul était en cours. Désormais, elles seront traitées dès que le Pixelpie sera prêt. Toute modification apportée à l'image précédente pendant l'attente sera supprimée.

- Activation de l'ajustement manuel du point noir par couleur pour les images RAW non CFA (c'est-à-dire linéaires). Notez que les niveaux incorporés dans les fichiers peuvent ne pas être réglés automatiquement lors de l'importation.

- Le module "Homogénéiser" comprend désormais des modes de postérisation et les options de masquage. Il est donc renommé "Homogénéiser ou postériser" afin de rendre la nouvelle fonctionnalité plus facile à découvrir.

- Des boutons d'aide ont été ajoutés à plusieurs boîtes de dialogue et onglets de préférences pour permettre un accès direct aux entrées du manuel en ligne correspondantes.

- Une nouvelle version de la science des couleurs de "Filmique" : v7 (2023), a été ajoutée. Elle est désormais la version par défaut. Cette version remplace le menu déroulant de préservation des couleurs par un curseur permettant de contrôler la saturation des hautes lumières. Ce curseur est utilisé pour contrôler un mélange entre les anciens modes "max RGB" et "no preservation".

- Il est maintenant possible d'imorter les clés de métadonnées supplémentaires suivantes :
   - `Iptc.Application2.Byline`
   - `Iptc.Application2.DateCreated`
   - `Iptc.Application2.TimeCreated`
   - `Exif.Image.ImageDescription`

- Le module "Ombres et hautes lumières" utilise désormais le filtre bilatéral par défaut, ce qui permet d'éviter les halos communs à l'ancienne valeur par défaut (gaussienne).

- Ajout de nouveaux rapports d'aspect dans le module "Cadre décoratif" :
    - CinemaScope
    - Lettre US
    - US Legal
    - Tailles d'impression standard (5×7", 8×&0", 11×14")

- Ajout d'une infobulle sur les bords des curseurs avec des limites souples Pour expliquer la façon de définir des valeurs en dehors de ces limites

- Amélioration de la clarté et de la convivialité de la boîte de dialogue permettant de confirmer la poursuite de l'action en cas d'échec de la suppression physique d'un fichier ou de son déplacement vers la corbeille.

- Un message d'avertissement n'est plus affiché lorsque plusieurs instances du module "Calibration couleurs" sont utilisées avec des masques. Cette approche est couramment utilisée pour gérer plusieurs sources lumineuses et est considérée comme une utilisation correcte du module.

- Il est maintenant possible de calibrer les couleurs en utilisant la sonde "Spyder Checkr Photo" dans le module "Calibration des couleurs".

## Correction de bogues

- Correction d'un problème où l'ordre de tri dans le panneau supérieur était réinitialisé à "nom de fichier" à chaque changement de collection.

Correction d'un problème qui faisait que les modules n'étaient pas toujours réinitialisés à leur état initial lorsque l'on appuyait sur le bouton de réinitialisation. Cette correction est liée à la refonte de l'application automatique des paramètres par défaut décrite ci-dessus.

- Les régions XMP (par exemple, celles issues de la reconnaissance faciale de l'appareil photo) sont désormais correctement transformées à partir des métadonnées afin de garantir qu'elles correspondent à l'image.

- Correction de certains problèmes d'arrondi dans le calcul des bordures dans le module "Cadre décoratif". Cela crée des bordures de même taille sur les côtés opposés.

- Correction de la saisie d'un rapport d'aspect personnalisé dans le module "Recadrer".

- Maintenance du code et correction de bogues pour l'écriture de fichiers DNG tels qu'ils sont utilisés dans "Créer HDR".

- Correction de certains problèmes de cache de pixelpipe liés à la visualisation des masques et aux histogrammes des modules internes (par exemple dans le module "Courbe RVB"). Cela permet d'obtenir un meilleur résultat dans le cache, ce qui se traduit par de meilleures performances, et évite également certains problèmes de rafraîchissement.

- Correction de l'appel à darktable avec `--threads n` pour qu'il ne permette pas d'utiliser plus de threads OMP que ceux disponibles sur l'hôte.

- Le module "Aberration chromatique RAW" a été modifié pour toujours utiliser l'image entière, et fonctionne donc maintenant correctement à tous les niveaux de zoom de la chambre noire.

- Un problème concernant la définition de l'élément actif dans une combobox ayant un contenu variable à l'aide d'un raccourci (ou `dt.gui.action` de Lua) a été corrigé. Il est maintenant possible de définir directement les valeurs des comboboxes pour le mode de fusion du module focalisé, etc. en définissant l'effet du raccourci.

- Le menu des préréglages des modules a été corrigé pour permettre la mise à jour du préréglage utilisé dans un plus grand nombre de situations. Par exemple, après être entré dans la chambre noire et avoir modifié certains paramètres du module, l'entrée "mettre à jour le préréglage" n'était pas sélectionnable auparavant et l'utilisateur devait d'abord sélectionner le préréglage, puis mettre à nouveau les paramètres à jour.

- Le calcul de la zone d'échantillonnage du sélecteur de couleur a été corrigé pour garantir qu'au moins un pixel est toujours sélectionné. À des niveaux de zoom élevés et avec une très petite zone, certaines erreurs d'arrondi pouvaient auparavant entraîner la sélection d'une zone vide et, par conséquent, un échantillon de couleur incorrect.

- Lors de l'importation la fonction "ignorer le classement EXIF" a été corrigée pour les images contenant la balise `XMP.xmp.Rating`. Cette option ne modifie pas le classement si un fichier XMP est trouvé avec un classement spécifique déjà saisi.

- Correction de quelques fuites de mémoire mineures dans certains modules.

- Correction d'un crash possible lors de la sélection de l'état original de l'historique du module et de la compression de l'historique.

- Correction d'un crash possible lors de la création d'un masque dégradé en raison d'un problème dans le parallélisme implémenté.

- Correction d'un problème avec l'option "Vérifier les fichiers XMP au démarrage" qui provoquait des erreurs de correspondance à chaque démarrage de darktable. La correction garantit que les horodatages XMP et de la base de données sont correctement alignés.

- L'emplacement de l'outil de correction du pinceau a été corrigé dans le module de retouche. Ce problème était plus visible sur les images qui avaient été déformées par d'autres modules plus tôt dans le Pixelpipe.

- Certaines différences entre les sorties CPU et OpenCL ont été corrigées dans les dématriceurs PPG et VNG/VNG4, ainsi que dans les options de correspondance des verts et de lissage des couleurs.

- Le module (caché) 'Finalscale' utilise désormais correctement le même mode d'échelle défini par l'utilisateur pour l'image et les masques.

- Correction de l'importation Exif de la marque et du modèle des boitiers Nikon de sorte qu'il n'est plus nécessaire d'ouvrir l'image dans la chambre noire.  L'importation fonctionne désormais également pour les fichiers non bruts.

- Correction d'un problème où le recadrage des métadonnées Canon CR3 n'était pas ignoré. La totalité de la zone visible du capteur (telle que déterminée par LibRaw) est désormais toujours utilisée pour les nouvelles importations.

- Correction pour donner la priorité à XWayland lors de l'utilisation de Wayland, puisque l'utilisation de Wayland natif est la cause de nombreux problèmes dans darktable.

- Lors de l'utilisation du mode de mappage de l'exposition, réinitialiser correctement le mode à "correction" lors d'un changement d'image.

- Correction d'un bogue qui permettait d'activer le module "reconstruction des hautes lumières" qui ne s'appliquait pas à l'image en cours. Par exemple, il est désormais impossible d'activer le module si l'image est un JPEG, car le module ne fonctionne qu'avec les RAW.

- Correction d'un problème dans l'algorithme de reconstruction des hautes lumières "Peinture opposée", où certains pixels sur la bordure de l'image n'étaient pas correctement traités par l'algorithme. Cela peut conduire à une petite différence sur le bord de l'image et évitera d'éventuels bords rougeâtres.

Correction d'un problème dans l'algorithme de reconstruction des hautes lumières "Par segmentation" où l'affichage du masque pouvait être interrompu parce que le module accédait à des données non initialisées.

- Correction pour éviter d'écrire dans un fichier XMP si cela n'a pas été demandé et si l'image n'a pas été modifiée. Cette règle est désormais également appliquée correctement lors de l'importation de RAW + JPEG.

- S'assurer que l'horodatage de la base de données est toujours défini lors de l'écriture éventuelle d'un fichier XMP 'sidecar'.

- Une solution de contournement a été mise en œuvre pour l'effet de survol de la souris sur les curseurs et les listes déroulantes. Ce survol entraînait le redessinement de l'ensemble du panneau latéral (y compris l'histogramme) à chaque déplacement de la souris entre les widgets. Ce problème a été corrigé et devrait réduire la consommation de l'unité centrale.

- Dans "Rotation et perspective", si la rotation actuelle est proche de ± 180 degrés, l'ajuster en dessinant une ligne d'horizon avec le <kbd>clic droit+drag</kbd> pouvait conduire à l'écrêter à l'extrémité du curseur. Ce problème a été corrigé de sorte que l'angle de rotation s'enroule correctement lorsqu'il atteint ±180. Une valeur saisie manuellement en dehors de la plage (comme 182) sera également enveloppée (jusqu'à -178).

- Correction du chargement des images monochromes.

- Correction de l'affichage des masques 'petits cercles' pour assurer que ces masques soient toujours visible.

- Correction du chargement de la bibliothèque OpenCL dans le cas où les symboles requis ne sont pas entièrement implémentés.

- Définir la taille de l'image EXR importée à l'étendue de la fenêtre de données valide uniquement.

- Traduction correcte des noms de tri dans la fenêtre popup de l'historique des tris du module "Collections".

- Correction des options de dématriçage double pour les caméras à capteur Bayer 4 couleurs où seuls VNG4 et PassThrough sont pris en charge.

- Ne pas tronquer la longueur focale sur les vignettes afin d'éviter une perte de précision dans l'affichage des valeurs.

- Correction d'un éventuel plantage causé par l'utilisation de masques de détail lors du passage à la chambre noire.

- Correction des masques de raffinement dans les modules "Correction des objectifs", "Retouche", "Liquéfier", "Correction des taches".

- Correction de quelques rares cas où les masques ne sont pas affichés lorsque l'on essaie de les éditer juste après avoir démarré darktable ou changé de groupe de modules.

- Correction du diaporama ne fonctionnant pas correctement sur les écrans HiDPI.

- Correction de plantages lors de l'utilisation de masques 'raster' après avoir réordonné le pixelpipe.

- Correction de l'utilisation du masque de détails dans les parties agrandies de l'image.

- Permettre l'ajout d'un patch de couleur sur la grille 7x7 du module "Calibration des couleurs" section "Mappage des couleurs"

- Correction de l'effet de raffinement lors de l'utilisation de modules de distorsion tels que "Retouche" ou "Correction des objectifs".

- Correction d'un ancien bogue potentiel de mémoire dans le code d'interpolation, bien qu'il ne se soit jamais produit en raison de la façon dont ce code est utilisé dans darktable.

- L'éditeur de métadonnées a été retravaillé afin d'éviter toute perte de données.

- Correction de l'importation de préréglages appliqués automatiquement où la limite supérieure de l'ISO, de l'ouverture et de l'exposition pouvait être incorrectement définie comme limite inférieure.

- Correction de la mise à jour de l'icône de 'épingle' dans le module "Filtres de collection" qui pouvait faire planter darktable lors de l'utilisation de certaines combinaisons de filtres spécifiques.

- Correction du message d'évaluation (étoiles) non affiché lors de l'évaluation d'un groupe réduit d'images à l'aide d'un raccourci clavier.

- Correction d'un crash possible dans le module "Réduction du bruit photo astro" lorsqu'il est utilisé sur le CPU (pas avec OpenCL).

- Correction mineure de valeurs de référence du Spyder Checkr 48 (v2 - après 2018).

- Correction d'un crash possible dans l'algorithme "ondelette a trous évitant les bords" lors de la manipulation de très petites régions de l'image.

- Ignorer correctement les latitudes/longitudes GPX vides qui pouvaient créer de fausses coordonnées de localisation.

- Correction de la sauvegarde de la position dans l'historique du module "Collections" et dans le module "Collections récentes". Cette correction permet de s'assurer que l'activation d'une entrée dans l'historique rétablit correctement le décalage de la vignette au point où l'entrée a été sauvegardée.

- Éviter un cas possible (et rare) de retournement indésirable de l'image sélectionnée dans la vue d'impression, en raison de la mise à jour des vignettes du bandeau.

- Correction d'un problème dans le module "Recadrer", où <kbd<Shift+glisser</kbd> sur un bord ne permettait que d'agrandir la zone de recadrage (tout en conservant le rapport hauteur/largeur) et ne pouvait pas la réduire. Auparavant, cette fonction ne fonctionnait correctement que si l'on tirait sur un coin.

## Lua

### Version de l'API

-   La version de l'API est maintenant la 9.1.0

### Ajout  ou modification de la prise en charge des actions par Lua

- L'appel Lua à dt.gui.action est devenu plus flexible, avec la plupart des paramètres optionnels. Par exemple, vous pouvez lire l'état focalisé d'un module en faisant simplement `dt.gui.action("iop/filmicrgb", "focus")`.

- Les infobulles affichent les commandes Lua compactes en mode mapping (en ajoutant uniquement le dernier paramètre -- instance -- si le module supporte le multi-instance) et ont été ajoutées aux menus préréglages et styles.

- Les commandes Lua peuvent être copiées dans le presse-papier, en utilisant <kbd>ctrl+v</kbd> dans le dialogue des raccourcis, à la fois à partir d'une action ou d'un raccourci sélectionné, ou d'un clic droit long en mode mapping (au-dessus d'un widget) ou dans les menus préréglages/styles.

- La commande lua afficher/copier pour un curseur ou un combobox fixera la valeur qu'il a actuellement.

- Un raccourci peut maintenant être dirigé vers un script Lua qui imite un curseur, un dropdown ou un bouton standard, mais qui sélectionne dynamiquement le(s) vrai(s) widget(s) qui le reçoit(vent), en se basant par exemple sur le module qui est focalisé ou activé. L'avantage est que tous les fallbacks fonctionnent normalement, vous pouvez donc lui assigner un bouton midi et le tourner (en maintenant <kbd>shift</kbd> / <kbd>ctrl</kbd> pour accélérer/diminuer) ou le presser pour réinitialiser. Fonctionne quel que soit le widget qui le reçoit.

  En fait, il s'agit d'une alternative beaucoup plus flexible aux faux widgets qui se trouvent sous `processing modules/focused`. Cela permet aux propriétaires d'un x-touch mini, par exemple, d'utiliser leurs rotors (peu nombreux) de différentes manières, entièrement configurables, tout en travaillant dans différents modules (qui peuvent également être focalisés à l'aide de boutons midi qui s'allument alors).

  De telles configurations pourraient être partagées à l'aide de https://github.com/darktable-org/lua-scripts.

- Prise en charge des raccourcis vers les curseurs/combos créés en Lua, soit via le mode de mapping visuel, soit dans la boîte de dialogue des raccourcis sous la catégorie Lua. Les éléments et les effets ne sont pas pris en charge.

### Autres changements en Lua

- Ajout d'un champ aspect_ratio à `dt_lua_image_t` pour la récupération de l'orientation de l'image.

- `dt_lua_image_t` respecte maintenant le paramètre "afficher les millisecondes des heures des images" dans les préférences de la table lumineuse et retournera `exif_datetime_taken` avec les millisecondes lorsque cette option est activée.

- Ajout des champs `final_height`, `final_width`, `p_height` et `p_width` à `dt_lua_image_t`.

- Deux nouvelles propriétés ont été ajoutées pour obtenir les drapeaux (catégorie, privé) et les synonymes d'un tag.

- L'événement `pixelpipe-processing-complete` a été déplacé de la fin du pixelpipe image et à la fin du pixelpipe prévisualisation afin de prendre en compte l'achèvement des événements qui ne mettent à jour que la prévisualisation, comme la mesure de l'exposition ponctuelle dans le module d'exposition.

## Notes

- Lors de l'exportation vers les formats AVIF, EXR, JPEG XL ou XCF, la sélection de métadonnées spécifiques (par exemple, l'étiquette géographique ou le créateur) n'est actuellement pas possible. Pour les formats AVIF, EXR, JPEG XL et XCF, darktable n'inclura aucun champ de métadonnées à moins que l'utilisateur ne sélectionne toutes les cases à cocher dans les options de préférences d'exportation.

- Afin de supporter l'affichage correct des nombres dans darktable, la version minimale supportée de Gtk a dû être augmentée à 3.24.15. Pour les personnes qui ont besoin de construire darktable avec une version plus ancienne, ceci peut être supporté en inversant le changement suivant : supprimez la ligne 241 du fichier darktable.css sur votre système. Voir : [#13166](https://github.com/darktable-org/darktable/issues/13166)
    
- À partir de cette version, une nouvelle politique de support des versions de macOS sera mise en place -- Les versions de darktable ne prendront en charge que les versions de macOS qui sont également prises en charge par Apple. Ainsi, la version 4.4 ne prend plus en charge les versions de macOS antérieures à la 11.3.
    

## Changement de dépendances

### Obligatoires

- Sans changement

### Optionelles

- Sans changement

## Changements RawSpeed

- Sans changement

## Prise en charge des appareils, par rapport à la version 4.2

### Support de base

- Canon PowerShot SX10 IS (dng)
- Canon PowerShot SX160 IS (dng)
- Canon PowerShot SX20 IS (dng)
- Canon PowerShot SX220 HS (dng)
- Canon PowerShot SX230 HS (dng)
- Canon PowerShot SX240 HS (dng)
- Canon PowerShot SX30 IS (dng)
- Canon PowerShot SX530 HS (dng)
- Canon PowerShot SX710 HS (dng)
- Fujifilm FinePix F550EXR
- Fujifilm X-A7
- Hasselblad X1D
- Hasselblad X2D 100C
- Leica M10 Monochrom (dng)
- Leica M11 (dng)
- Leica M11 Monochrom (dng)
- Leica Q3 (dng)
- Nikon Z 8 (14 bit-compressed)
- Panasonic DC-GH5M2 (4:3)
- Panasonic DMC-FZ100 (1:1, 3:2, 16:9)
- Panasonic DMC-GF8 (4:3, 1:1, 3:2, 16:9)
- Phase One IQ180
- Phase One P45
- Sony ILME-FX30

### Préréglages de la balance des blancs


- Canon PowerShot SX160 IS
- Fujifilm X-H1
- Fujifilm X-H2S
- Fujifilm X-T200
- Nikon Z 6_2
- OM System OM-1
- Pentax K-1 Mark II
- Ricoh GR IIIx
- Sony DSC-RX100M7
- Sony ILCE-7C
- Sony ILME-FX30
- Canon EOS R7
- Canon EOS R10

### Profils de bruit

- Canon PowerShot SX160 IS
- Fujifilm X-H1
- Fujifilm X-H2S
- Fujifilm X-T200
- Nikon Z 6_2
- OM System OM-1
- Pentax K-1 Mark II
- Ricoh GR IIIx
- Sony DSC-RX100M7
- Sony ILCE-7C
- Sony ILME-FX30
- Canon EOS R7
- Canon EOS R10

### Noise Profiles

- Canon PowerShot SX160 IS
- Nikon Z 6_2
- Ricoh GR IIIx
- Sony ILCE-6100
- Sony ILCE-7M4
- Sony ILCE-7RM5
- Sony ZV-E10

### Absence de prise en charge du mode de compression

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, DJI, etc.)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Samsung Expert RAW DNGs

### Support suspendu 

La prise en charge des appareils suivants est suspendue car aucun échantillon n'est disponible sur [raw.pixls.us](https://raw.pixl.us) :

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

### Traductions

- nouvelle traduction anglaise avec les majuscules
- Allemeand
- Espagnol - Europe
- Français
- Hébreu
- Hongrois
- Japonais
- Polonais
- Portuguais - Brésil
- Slovénien
- Albanais
- Ukrainien
- Chinois - Chine
- Chinois - Taiwan
