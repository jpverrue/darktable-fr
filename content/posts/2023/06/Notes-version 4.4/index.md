Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.4.0 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.4.0](https://github.com/darktable-org/darktable/releases/tag/release-4.4.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```  
$ sha256sum darktable-4.2.0.tar.xz  
??? darktable-4.2.0.tar.xz  
$ sha256sum darktable-4.2.0.dmg  
??? darktable-4.2.0.dmg  
$ sha256sum darktable-4.2.0.exe  
??? darktable-4.2.0.exe  
```  
Lors de la mise à jour à partir de la série stable 4.0.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus, mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.2.x.

Il est fortement conseillé de faire d'abord une sauvegarde.  

#### note importante : Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil photo, veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri). Vous y apprendrez comment contribuer à la constitution de l’ensemble d’échantillons d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.0 :  
  

- Presque XXXX commits à darktable+rawspeed  
- XXXX demandes de pull traitées  
- XXXX problèmes fermés  
  

## Les grandes nouveautés
Voici un résumé des principales fonctionnalités ajoutées à darktable 4.4. La plupart de ces fonctionnalités sont décrites plus en détail dans le manuel de l'utilisateur.

- Permettre de définir plusieurs préréglages et de les appliquer automatiquement aux images correspondantes. Chaque préréglage après le premier créera une nouvelle instance de module juste au-dessus du module actuel (de sorte qu'il s'applique après).

 - Pour mieux voir quelle instance de module correspond à quel préréglage, l'étiquette du module est définie à partir l'étiquette du préréglage. Cette étiquette de module sera modifiée si certains paramètres du module sont modifiés. L'étiquette du module sera effacée si aucun préréglage ne correspond ou sera remplacée par la nouvelle étiquette du préréglage dans le cas contraire. Si l'étiquette du module a été éditée à la main, elle sera conservée telle quelle et ne sera jamais mise à jour automatiquement.

 - Une nouvelle option nommée "Mettre à jour automatiquement le nom du module" (activée par défaut) a été introduite pour permettre de désactiver complètement la mise à jour automatique de l'étiquette du module.

 - Les paramètres par défaut des modules ont été retravaillés pou les rendre utilisables dans les copier/coller, les préréglages et les styles.

- De nombreux modules ont des paramètres par défaut basés sur les métadonnées de l'image ou le flux de travail actuel :
  - "Exposition" : utilise un paramètre par défaut spécifique dans le flux de travail référencé par la scène,
  - "Réduction du bruit (Profil) : spécifique à l'appareil photo et à la sensibilité ISO,
  - "Correction des objectifs" : spécifique à l'appareil photo et à l'objectif,
  - "Courbe de base" : spécifique au capteur de l'appareil photo,
  - "Balance des blancs" : spécifique aux métadonnées,
  - "Orientation" : spécifique aux métadonnées,
  - "Calibration des couleurs" : spécifique aux métadonnées.
  
   Pour tous ces modules, il est désormais possible de coller des paramètres et de s'assurer que les métadonnées par défaut appropriées seront utilisées. Pour ce faire, il suffit de sélectionner la colonne correspondante "Réinitialiser" dans la boîte de dialogue des préréglages et des styles.

- Pour les préréglages, une nouvelle option peut être sélectionnée dans la boîte de dialogue pour que le préréglage utilise les paramètres par défaut du module sur lequel il est appliqué. L'option s'appelle "Réinitialiser tous les paramètres du module à leurs valeurs par défaut".

  Cette nouvelle fonctionnalité générique a permis d'éliminer certaines tentatives de faire le même type de support au niveau du module, ce qui était de toute façon limité.

- Redéfinition des paramètres du flux de travail, nous avons maintenant le choix entre :
  - Référence à la scène (Filmique RVB).
  - Référence à la scène (Sigmoïde)
  - Référence à l'affichage (Ancien)
  - Aucun

-  La préférence pour l'adaptation chromatique a été supprimée et est implicite dans le flux de travail. Le module d'étalonnage des couleurs est utilisé lorsqu'il s'agit d'une préférence de scène et d'une balance des couleurs dans le cas contraire.

- Enfin, en combinant le flux de travail "Aucun" et les deux nouvelles fonctionnalités ci-dessus ("Prise en charge de préréglages multiples" et "Réinitialisation des paramètres par défaut basée sur les métadonnées"), il est possible de créer n'importe quel autre type de flux de travail. Par exemple, il est possible d'utiliser Sigmoïde avec le module de balance des blancs.

- Ajout de la prise en charge des Color Harmony Guide dans le vectorscope RVB.

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

- Divers nettoyages de code et amélioration des performances. Tout le code spécifique SSE2 des modules suivants a été supprimé (car le code parallèle optimisé généré par le compilateur est plus rapide) ou le code optimisé dans les modules suivants. Cela conduit à un gain de vitesse de 5% à 25% :
   - "Homogénéiser ou postériser"
   - "Filtre dégradé"
   - "Profil de couleur d'entrée"
   - "Table correspondance couleurs"
   - "Cadre décoratif"
   - "Flou de surface"
   - "Vignette"
   - "Retouche"
   - "Réduction du bruit (profil)"
   - "Inverser"
   - "Contraste local avec Laplacien local"
   - "Filtre passe-bas"
   - "Niveaux RVB"
   - "Profil de couleur d'entrée"
   - "Faible lumière"
   - "Velvia"
   - "Virage partiel"
   - "Docteur néga"
   - "Calibration des couleurs" (CIECAM16, Bradford linéaire, XYZ et Bradford non linéaire).
   - "Filmique" (ancienne version, non RVB)"
   - "Filmique RVB" (y compris la reconstruction des hautes lumières)"
   - "Balance des couleurs RVB"
   - "Balance des couleurs (ancienne version, non RVB)"
   - "Niveaux (ancienne version, non RVB)"
   - "Lumière d'arrière-plan"
   - "Liquéfier"
   - "Mappage des couleurs"
   - "Filtre passe-haut"
   - "Ombres et hautes lumières"
   - "Correction des objectifs"
   - "Grain"
   - "Monochrome"
   - "Reconstruction des hautes lumières" (peinture opposées)


   - Les algorithmes d'interpolation (Bicubique, Bilinéaire, Lanczos2, Lanczos3) utilisés par les modules effectuant la déformation ou la mise à l'échelle des pixels : l'ancien module "Recadrer et pivoter" (déprécié) et le nouveau module "Rotation et perspective" fonctionnent désormais plus rapidement.

   - Le générateur gaussien utilisé par de nombreux modules : "Censure", "Réduction du bruit (profil)", "Filtre passe-bas", "Diffusion et netteté", "Suppression de franges", "Aberrations chromatiques RAW", "Courbe de base", "Correction de la perspective", "Filmique RVB", "Retouche", "Égaliseur de tons" et "Zone Système" (obsolète). Cela signifie que tous ces modules ont des parties qui fonctionnent dorénavant plus rapidement.
 
   - Le filtre box blur (flou de boîte) utilisé par :
     - le focus peaking (Mode zones nettes),
     - le filtre guidé des masques paramétriques,
     - les nouveaux algorithmes de récupération des hautes lumières,
     - ainsi que les modules "Lumière d'arrière-plan", "Filtre passe-haut", "Suppression de la brume" et "Effet Orton (adoucir)".
     
     Cela signifie que tous ces modules et fonctionnalités ont des parties qui fonctionnent à présent plus rapidement.

   - L'agorithme "ondelette à trous évitant les bords" est utilisée par les modules "Égaliseur de contraste" et "Réduction du bruit (profil)". Ce qui signifie que ces modules ont des parties qui fonctionnent maintenant plus rapidement.

   - Certaines parties du filtre bilatéral ont été améliorées pour de meilleures performances. Ce filtre est utilisé dans de nombreux modules tels que "Monochrome", "Filtre passe-bas", "Ombres et hautes lumières", "Censure", "Retouche", "Mappage des couleurs", "Rotation et perspective" et "Contraste local". Cela signifie que tous ces modules ont des parties qui fonctionnent désormais plus rapidement.

   - Tous les modes de mélange en Lab et RVB pour les flux de travail "relatif à l'affichage" et "relatif à la scène" ont été optimisés.

   - Les matrices d'adaptation des couleurs ont été transposées pour permettre la vectorisation.

   - Le calcul du masque de luminance pour le module "Égaliseur de tons".

   - le Chargeur pour le format des fichiers JPEG 2000.

   - L'opération "Acquérir des grappes" dans le module "Mappage des couleurs" a été accélérée d'un facteur de 30 à 200, ce qui rend les résultats quasi instantanés dès que l'on clique sur le bouton.

- Ajout d'un raccourci global <kbd>right-click</kbd> et d'un glisser-déposer pour fixer la rotation de l'image. Ce raccourci peut désormais être utilisé à tout moment dans la chambre noire, à condition que le module en cours d'utilisation n'utilise pas ce raccourci. Cela permet de corriger rapidement la rotation sans avoir à ouvrir le module Rotation et Perspective.

## Autres changements

- Révision du code du sélecteur de couleurs. Les sélecteurs ne sont plus exécutés inutilement dans de nombreux cas, ce qui permet d'accélérer le processus. Le code du sélecteur est désormais adapté pour les processeurs contemporains. Il utilise les fonctionnalités récentes d'OpenMP, ce qui permet d'obtenir un code plus succinct. Lorsqu'il est utilisé via le module "Filmique", le sélecteur n'exécute plus qu'une passe de débruitage qui prend du temps (dans ce cas, l'élimination du bruit rend le réglage automatique plus efficace).
  Plus d'avertissement lorsque l'on travaille sur des images monochromes.
  Diverses autres nettoyages, dédoublonnages, optimisations, et plus  généralement du rangement.

- Révision du code du Pixelpipe et de sa stratégie de mise en cache avec des gains de performance significatifs lors du développement en chambre noire.

- Modernisation du code de calcul de l'histogramme. Suppression du code SSE (qui n'apporte aucun gain de vitesse), mais l'utilisation de ce dernier comme modèle pour le code optimisé utilisant les fonctionnalités récentes d'OpenMP.
  Suppression de divers bouts de code inutilisés, et fournir une API interne cohérente. Dans certains cas, ce code produira des résultats légèrement plus précis. Dans certains cas, le nouveau code utilise beaucoup moins de mémoire.

- Ajout du support OpenCL au module Sigmoïde.

- Ajout du support OpenMP à l'export XCF pour de meilleures performances.

- Ajout du support OpenMP au chargeur RGBE pour de meilleures performances.

- Ne plus invalider les instantanés lorsque l'historique est modifié (compressé ou réinitialisé). Tous les instantanés sont désormais stockés avec leur historique complet et peuvent être reconstruits correctement.

- Le module "Niveaux" est obsolète, utilisez "Niveaux RVB" à la place.

- Le module "Contraste Luminosité Saturation" est obsolète, utilisez "Balance couleur RGB" à la place.

- Conversion du widget de zoom de la fenêtre de navigation en un menu déroulant standard pour mieux s'adapter à l'interface de darktable.

- Diminuer la taille de la bordure ISO 12646 tout en restant dans la taille recommandée.

- Retravailler le filtre de la boîte de dialogue de création / modification des préréglages pour mieux montrer la relation entre les formats RAW, non RAW et les trois formats HDR, monochrome et couleur. Cela permet d'éviter les confusions et la création de préréglages qui ne sont en fait pas appliqués.

- Le groupe de modules par défaut a été supprimé. Il est préférable d'utiliser l'un des groupes relatifs à la scène.

- Ajout d'un support pour le chargement des images QOI et FITS.

- Ajout de la prise en charge de l'écriture des métadonnées au format XCF (voir les notes ci-dessous).

- Lire les métadonnées Exif des images AVIF, HEIC et JPEG XL à l'aide des bibliothèques natives si Exiv2 ne le supporte pas.

- Écrire les données Exif dans le bloc PNG d'EXIF, si vous utilisez une version d'Exiv2 plus récente que la version 0.27.x. Il s'agit de la nouvelle méthode standard pour stocker les données Exif dans les PNG.

- Exportation des masques pour les EXR en tant que canaux supplémentaires.

- Réactivation du chargement des images BigTIFF en essayant d'abord le lecteur natif basé sur libtiff.

- Refonte de l'exportation et de la génération des vignettes.
  Quelques astuces ont été accumulées pour essayer d'avoir la taille exacte des images exportées. Tout cela a été repensé et simplifié pour obtenir une meilleure taille d'exportation.

- Améliorer les performances de la "Reconstruction des hautes lumières" avec "peinture opposée" en fournissant une implémentation OpenCL et en utilisant la mise en cache interne dans la chambre noire.

- Diverses améliorations de l'interface de débogage :
  - `-d common` fournit les informations les plus précieuses et devrait être utilisé pour les rapports de bogues au lieu de -d all.
  - `-bench-module <modulea,moduleb>` effectue une analyse comparative des modules spécifiés.
  - `--dump-pipe <modulea,moduleb>` écrit les données d'entrée et de sortie des modules spécifiés sous forme de fichiers pfm à des fins d'inspection.

- Amélioration de la prise en charge de la correction des objectifs basée sur les données intégrées.
  - Ajout de la prise en charge des fichiers DNG,
  - Permet un réglage fin de l'échelle,
  - Ajout d'un bouton de mise à l'échelle automatique.
  - Amélioration des performances globales du module d'environ 8 %.
  - Un algorithme amélioré pour la correction de l'objectif basée sur les métadonnées intégrées a été ajouté au module "Correction des objectifs". Il améliore les corrections de distorsion et de vignettage pour les images Fujifilm et Sony prises en charge.
 
    La prise en charge des fichiers bruts des caméras Fujifilm X-Trans I/II/III a également été ajoutée.
   - De nouveaux curseurs permettant de modifier l'échelle de l'image et le réglage fin de l'aberration chromatique ont été ajoutés dans le module "Correction des objectifs".

- Ajout d'en-têtes de section dans la liste déroulante de tri (fichiers, heures, etc.).

- Les raccourcis assignés aux préréglages ou aux styles s'affichent lorsqu'on les survole dans leur menu.

- Un clic gauche prolongé sur un préréglage gardera le menu ouvert afin que vous puissiez rapidement passer d'un préréglage à l'autre pour voir l'effet sans avoir à cliquer à plusieurs reprises sur le bouton du préréglage pour rouvrir le menu. Vous pouvez également faire défiler le bouton de préréglage pour passer aux préréglages précédents/suivants (comme vous pouvez déjà le faire à l'aide des raccourcis).

- Lorsque le module "Recadrer" reçoit le focus et passe à une vue non recadrée de l'image, les zones de recadrage autour des bords de l'image s'allument brièvement pour indiquer qu'elles peuvent maintenant être déplacées.

- Le module "Recadrer", affiche l'image complète pour faciliter les ajustements, ne déclenche pas de recalcul inutile jusqu'à ce que le module perde le focus (par exemple en passant à un autre module ou en réduisant le module de recadrage lui-même), auquel cas le nouveau recadrage est utilisé pour redimensionner. Si des raccourcis sont utilisés pour apporter des modifications au recadrage sans donner le focus au module, ils seront tout de même mis en œuvre immédiatement.

- La hauteur des widgets et des listes redimensionnables peut désormais être modifiée en faisant glisser leur partie inférieure. La méthode précédente, qui consistait à faire défiler l'écran tout en maintenant la touche <kbd>Ctrl</kbd> enfoncée, a été remplacée par <kbd>shift+alt+défilement</kbd> (et une note a été ajoutée à toutes les infobulles de manière cohérente). Cela permet de libérer <kbd>ctrl+scroll</kbd> pour affiner les changements dans les niveaux RVB ou l'histogramme (pour modifier l'exposition ou le niveau de noir). Dans le navigateur (partie centrale de la table lumineuse), <kbd>ctrl+scroll</kbd> ajustera le niveau de zoom sans limites, comme il le ferait dans la zone centrale.

- L'interface graphique de l'histogramme a été retravaillée. Les boutons de contrôle ont été divisés en deux groupes : sur le côté gauche, une série de boutons pour passer d'un mode d'histogramme à l'autre (histogramme, forme d'onde, parade RVB, vectorscope). Sur le côté droit, les boutons qui contrôlent l'aspect de chaque mode (canaux RVB, orientation, type de vectorscope). Pour le vecteoscope RVB, une série de boutons a été ajoutée pour visualiser les lignes de guidage des harmonies de couleurs les plus courantes.

- La logique de zoom du défilement interne de l'image centrale dans la chambre noire a été retravaillée afin de rendre les étapes du zoom plus uniformes d'un point de vue perceptif pour toutes les tailles d'image.

- Meilleur affichage du nom de l'instance du module dans la chambre noire afin d'avoir une séparation visuelle claire entre le nom du module et le nom de l'instance. Le nom de l'étiquette dans l'historique est également mis à jour en conséquence.

- Amélioration de l'affichage du widget des scores (étoiles). Il devrait être plus lisible avec un meilleur contraste et un remaniement de certaines icônes.

- Dans la table lumineuse, les raccourcis vers l'aperçu : "volatil"<kbd>w</kbd> (par défaut) et "maintenu" <kbd>f</kbd> (par défaut) mènent à la même action (auparavant, il y avait deux actions "aperçu plein écran", l'une avec et l'autre sans détection de focus). La détection de la mise au point est sélectionnée par le biais d'un élément, le maintien ou le basculement par le biais d'un effet. Tous les raccourcis mappés sont affichés dans l'infobulle du bouton de présentation de l'aperçu.

- Le mode de récupération des hautes lumières "laplaciens guidés" est moins gourmand en mémoire (économie d'environ 40 %) et permet une augmentation importante de la vitesse. Cela rend ce mode de récupération beaucoup plus utilisable et permet plus d'itérations de récupération.

- Ajout de la prise en charge des métadonnées de correction d'objectif  intégrées aux DNG. En lisant les métadonnées 'rectilinear' et 'vignette_radial', il est maintenant possible de corriger l'objectif.

- Ajout de la prise en charge des métadonnées MaxApertureValue en complément de la métadonnée déjà supportée ApertureValue. Il s'agit de la seule métadonnée disponible en Leica M Monochrom, M8, M9 & M10 DNG.

- Le filtre de recherche a été amélioré pour rechercher également la marque et le modèle de l'appareil photo.

- Un copier-coller complet est toujours effectué en mode écrasement. Dans la plupart des cas, l'utilisation du mode empiler n'est pas la bonne solution. Lorsque l'historique complet est copié et collé dans une autre image, nous voulons utiliser le nouvel historique en remplacement du précédent. Cela n'a pas de sens d'ajouter des multi-instances pour certains modules par exemple. Cette nouvelle sémantique par défaut devrait donc mieux s'intégrer dans le flux de travail.

- Le chemin du pinceau est maintenant un peu plus transparent pour mieux voir ce qui est réellement peint.

- L'infobulle du style affiche immédiatement les détails du module en attendant que l'image de prévisualisation soit calculée.

- Dans les dialogues de style et de copier/coller, une nouvelle colonne affiche l'état de masquage du module. Si un masque (dessin, paramétrique ou raster) est utilisé, la colonne contient une icône de masque.

- Les infobulle des outils de forme du module "Liquéfier" sont désormais cohérentes avec les autres outils de masque.

- Suppression de l'option de configuration "Dématriçage pour le mode chambre noire zoomé". Cette option n'est plus utile maintenant que le cache du pixelpipe a été amélioré. Elle peut également entraîner de légères différences. 

- Dans le "Gestionnaire de masques", certaines actions du menu pouvaient être activées même si elles étaient inopérantes compte tenu du contexte. Ainsi, les actions de déplacement vers le haut et vers le bas sont désormais désactivées pour le premier et le dernier élément d'un groupe respectivement.
  Le réglage de l'opérateur de masque est désactivé pour le premier élément d'un groupe. Il s'agit essentiellement de petites améliorations de l'interface utilisateur.

- Deux nouveaux préréglages de "netteté" sur le module "Diffusion ou netteté" ont été ajoutés. Un "Netteté" et un autre "Netteté : Forte" avec un effet plus prononcé viennent compléter "Netteté : rapide"

- Les boutons d'instantanés ont été redessinés pour avoir une meilleure apparence. L'affichage est désormais plus proche du module d'historique. En même temps, l'étiquette du module est affichée et peut être modifiée à l'aide de la touche <kbd>ctrl+clic</kbd>.

- Lecture de la distance de mise au point pour les boîtiers Nikon Z.

- Modification de la lecture des métadonnées "créateur" à partir du modèle d'échange d'informations IPTC pour préférer "By-line" à "Writer/Editor". Lecture des métadonnées de date/heure et de description à partir des propriétés couramment utilisées.

- Le dessin de la flèche entre la zone source et la zone de destination dans le module "Retouche" a été retravaillé. Nous avons une flèche pour toutes les formes (au lieu d'une simple ligne pour les formes Pinceau et Chemin). De plus, la flèche est toujours la plus courte possible entre les deux zones, ce qui évite de croiser les formes. Enfin, pour les cercles et les ellipses, la flèche ne part plus de la zone centrale mais, comme pour les autres formes, de la bordure.

- Ajout d'une option permettant de modifier le comportement du zoom pour le bouton central de la souris dans la chambre noire. Le paramètre peut être activé dans le dialogue des préférences sous la catégorie "Chambre noire". Le nouveau comportement ne permet de zoomer qu'entre l'ajustement et 100 %. Pour obtenir un zoom de 200 %, il faut faire <kbd>ctrl+clic</kbd>.

- Les curseurs de taille, de plume et de dureté de la forme du masque dans le module de gestion des masques s'affichent désormais à l'échelle logarithmique et le défilement sur ces curseurs permet d'effectuer des ajustements relatifs, tout comme le défilement de la forme elle-même avec la touche <kbd>Shift</kbd>. Les touches <kbd>Ctrl</kbd> ou <kbd>Shift</kbd> permettent d'effectuer des ajustements fins ou grossiers, également à l'aide de raccourcis si les fonctions de repli sont activées. Les raccourcis assignés aux curseurs peuvent être utilisés pour ajuster la taille/dureté du pinceau pendant le dessin.

- Amélioration de l'édition des masques en facilitant la sélection des points de contrôle des masques et plus particulièrement des segments du chemin. Dans certains cas, il était difficile de sélectionner un segment et, au lieu de cela, c'est l'ensemble du masque du chemin qui était sélectionné et donc déplacé. Le dessin des masques sur le canevas a également été amélioré afin d'être plus cohérent pour tous les types de formes.

 - Ajout d'un 5ème mode de combinaison des formes de masque : "somme". Ce mode permet de superposer des coups de pinceau répétés de faible opacité afin d'augmenter la force du masque. C'est désormais le mode par défaut pour les formes de pinceau.

- Le mode de toutes les formes sélectionnées peut être modifié en une seule fois à partir du menu contextuel du gestionnaire de masques.

- Lors de l'utilisation d'un raccourci pour ajouter des formes dans la section de mélange d'un module, le mode de mélange passe à "masque dessiné" ou "masque dessiné et paramétrique", en fonction de ce qu'il était auparavant, de sorte que toute forme nouvellement créée aura réellement un effet.

- Affichage de la longueur focale équivalente plein cadre et du facteur de recadrage dans le module d'information sur l'image.

- Ajout d'options dans le module "Filigrane" pour un contrôle plus fin de l'échelle du filigrane. En association avec le nouveau modèle "texte à taille fixe", il est désormais possible d'insérer du texte avec une taille de police constante.

- Les modifications successives apportées aux curseurs (par exemple en les faisant glisser, en les faisant défiler ou en les raccourcissant) et à d'autres widgets sont plus réactives car elles créent moins d'enregistrements d'annulation. Cela rend également l'utilisation de l'annulation plus efficace, car elle ne passe pas par toutes les micro-modifications.

- Amélioration du widget de sélection de la plage ISO pour la boîte de dialogue d'application automatique des préréglages.

- Dans le mode de mélange du masque dessiné, il y avait, en plus du bouton "basculer la polarité" - que l'on trouve dans tous les modes de mélange - la case "inverser le masque". Les deux faisant la même chose, la dernière a été supprimée.

- Prise en charge de l'anneau de l'encodeur et des lumières des boutons du Behringer X-Touch Compact via midi. Les pressions sur les encodeurs non mappés retombent pour réinitialiser l'encodeur.

- Les boutons midi mappés à l'effet de réinitialisation d'un curseur ou d'un combo (soit directement, soit via fallback, comme la rangée sous les faders du X-Touch Compact) s'allument si la valeur actuelle n'est pas la valeur par défaut.

- La réinitialisation d'un combo (en double-cliquant ou via un raccourci) qui a des sous-en-têtes sélectionnera désormais le premier élément sélectionnable.

- Les demandes de changement d'image dans la chambre noire (espace/retour/clic dans la bande de film) étaient auparavant ignorées si un nouveau calcul était en cours. Désormais, elles seront traitées dès que possible. Toutes les modifications apportées à l'image précédente pendant cette attente seront ignorées.

- Activation de l'ajustement manuel du point noir par couleur pour les images RAW non CFA (c'est-à-dire linéaires). Notez que les niveaux incorporés dans les fichiers peuvent ne pas être réglés automatiquement lors de l'importation.

- Amélioration du module "Homogénéiser" de tramage avec des modes de postérisation et de masquage, et renommage du module "Homogénéiser ou postériser" pour rendre la nouvelle fonctionnalité plus facile à découvrir.

- Ajout de boutons d'aide à plusieurs boîtes de dialogue et onglets de préférences, pour lancer directement le manuel en ligne.

- Nouvelle version de la science des couleurs Fimic v7 (2023) qui a été définie par défaut. Le mode de préservation des couleurs a été supprimé et un nouveau curseur est proposé pour contrôler la saturation des hautes lumières. Ce curseur donne un mélange entre le mode de préservation maximale de la chroma RVB et le mode sans préservation.

- Ajout d'un support pour l'importation de clés de métadonnées supplémentaires :
   - `Iptc.Application2.Byline`
   - `Iptc.Application2.DateCreated`
   - `Iptc.Application2.TimeCreated`
   - `Exif.Image.ImageDescription`

- Le module "Ombres et hautes lumières" utilise maintenant le filtre Bilatéral par défaut cela évitera la plupart des halos, ce qui en fait un meilleur filtre par défaut.

- Ajout de quelques formats d'impression standard (5x7, 8x10, 11x14) à la liste des rapports d'aspect prédéfinis dans le module "Bordures".

- Rendre tous les boutons de sélecteur de couleur qui ne l'étaient pas encore,  accessibles via des raccourcis et lua.

- Ajout d'une infobulle sur les bords des curseurs avec des limites souples sur la façon de définir des valeurs en dehors de ces limites.

- Inversion de l'ordre de tri des formes dans les groupes du "Gestionnaire de masques" afin que la forme la moins bien classée soit en bas du groupe. Pour des raisons de cohérence, l'ordre de tri des formes en dehors d'un groupe a été modifié.

- Ajout de nouveaux rapports d'aspect dans le module de bordure :
    - CinemaScope
    - Lettre US
    - US Legal

- Amélioration de la clarté et de la convivialité de la boîte de dialogue permettant de confirmer la poursuite de l'action en cas d'échec de la suppression physique d'un fichier ou de son déplacement vers la corbeille.

- Les menus déroulants permettant de sélectionner le degré de lissage du pinceau et de déterminer si la pression du stylo affecte la taille, la dureté ou l'opacité du pinceau, ont été déplacés des préférences vers la section repliable "Paramètres" du gestionnaire de masques. Ainsi ils peuvent être modifiés pendant le dessin ou même affectés à des raccourcis.

- Ajout de l'affichage des métadonnées du profil ICC de l'image courante dans l'infobulle du widget de profil d'entrée.

- Ne plus envoyer de message d'erreur si plusieurs modules de mixage de canaux sont utilisés avec des masques appliqués. Cette utilisation est censée couvrir différents domaines et doit donc être considérée comme correcte.

- Ajout de la géométrie de Spyder Checkr Photo dans le module "Calibration des couleurs" section "Calibrer avec une charte couleur"

## Correction de bogues

- Correction de la réinitialisation de l'ordre de tri à "nom de fichier" à chaque changement de collection.

- Suppression du bouton "valider" du module "Recadrer" car il n'était plus utilisé.

- Correction de la réinitialisation des modules avec des paramètres par défaut spécifiques pour s'assurer que les modules seront remis dans le même état que celui dans lequel ils se trouvaient lors de la première importation de l'image. Cette correction est liée à la révision des paramètres par défaut du module d'application automatique dans la section ci-dessus.

- Transformer correctement les régions XMP des métadonnées pour s'assurer qu'elles correspondent à l'image. Les régions XMP peuvent provenir de la reconnaissance faciale de l'appareil photo, par exemple.

- Correction de certains problèmes d'arrondi dans le calcul des bordures dans le module de bordure. Cela crée des bordures de même taille sur les côtés opposés.

- Maintenance du code et correction de bogues pour l'écriture de fichiers DNG tels qu'ils sont utilisés dans "Créer HDR".

- Amélioration de la sécurité du cache de Pixelpipe et des performances. Cela permet d'obtenir de meilleurs résultats lors de la recherche dans le cache et donc d'améliorer les performances.

- Correction de certains problèmes de cache liés à la visualisation des masques et à l'histogramme interne du module (comme la courbe RVB par exemple). Cela permet d'obtenir un meilleur résultat dans le cache et donc de meilleures performances, ainsi que d'éviter certains problèmes de rafraîchissement dans certains cas.

- Correction de l'option `--threads n`. Restreint les threads OMP au nombre spécifié (ne permet pas plus de threads que ceux disponibles sur l'hôte).

- Le module "Aberration chromatique RAW" fonctionne toujours sur les données complètes de l'image, de sorte que la qualité est immunisée contre la mise à l'échelle en mode chambre noire.

- Un bogue avec les raccourcis (et `dt.gui.action`) pour définir l'élément actif dans une boîte combinée avec un contenu variable a été corrigé. Il est maintenant possible de définir directement les valeurs des combos pour le mode de mélange du module ciblé, etc.

- Correction de l'entrée de mise à jour du préréglage dans le menu des préréglages pour permettre de l'activer dans davantage de situations. Par exemple, après être entré dans la chambre noire et avoir modifié certains paramètres dans le module, l'entréede mise à jour du préréglage n'était pas sélectionnable. Il fallait d'abord sélectionner le préréglage puis modifier les paramètres.

- Correction du calcul de la zone d'échantillonnage du sélecteur de couleur afin de s'assurer qu'au moins un pixel est sélectionné. À un niveau de zoom élevé et avec une très petite zone, certains arrondis renvoyaient parfois une zone vide. Cela entraîne le retour d'un échantillon de couleur erroné.

- Correction de la fonction Ignorer le classement EXIF lors de l'importation initiale pour les images contenant la balise XMP.xmp.Rating. Cela ne modifie pas le classement si un XMP avec un classement spécifique a déjà été créé.

- Correction de quelques fuites de mémoire mineures dans certains modules.

- Correction d'un crash possible lors de la sélection de l'état original de l'historique du module et de la compression de l'historique.

- Correction d'un crash possible lors de la création d'un masque dégradé en raison d'un problème dans le parallélisme implémenté.

- Correction du 'crawler' lors de la mise à jour du XMP. Le fichier XMP doit être défini avec l'horodatage de l'entrée de la base de données pour s'assurer que nous n'avons pas d'incohérences continues signalées.

- Correction de différents problèmes dans le gestionnaire de masques. Il est maintenant possible d'ajouter tous les types de masques en continu. De plus, la brosse ne s'affichait pas correctement après avoir été créée à partir du gestionnaire de masques. Un crash lors de la création de dégradés à partir du gestionnaire de masques a été corrigé. Pour toutes les formes, l'état modifiable est correctement défini après la création, ce qui permet de déplacer et de redimensionner les différentes parties.

- Correction du placement de l'outil de correction de pinceau utilisé dans le module "Retouche", le problème était plus visible lorsque l'image était déformée.

- Correction des différences de sortie CPU vs OpenCL dans les dématriceurs PPG et VNG/VNG4, correspondance des verts et du lissage des couleurs.

- 'Finalscale' utilise désormais correctement le même mode d'échelle défini par l'utilisateur pour l'image et les masques.

- Correction de l'affichage lors de l'édition du nom d'une forme dans le gestionnaire de masques. Évite la superposition de l'ancien et du nouveau nom.

- Correction du nettoyage des informations Exif de la marque et du modèle de l'appareil photo Nikon lors de l'importation ; l'ouverture dans la chambre noire n'est plus nécessaire, et fonctionne désormais également pour les fichiers non RAWs.

- Correction du recadrage des métadonnées Canon CR3 qui n'est pas ignoré ; la totalité de la zone visible du capteur (telle que déterminée par LibRaw) est maintenant toujours utilisée sur les nouvelles importations.

- Lorsque vous utilisez Wayland, donnez la priorité à XWayland, car Wayland natif est la cause de nombreux problèmes dans darktable.

- Lors de l'utilisation du mode de mappage de l'exposition, réinitialiser correctement le mode à "correction" lors d'un changement d'image.

- Correction d'un bogue qui permettait d'activer le module "reconstruction des hautes lumières" qui ne s'appliquait pas à l'image en cours. Par exemple, il est désormais impossible d'activer le module si l'image est un JPEG, car le module ne fonctionne qu'avec les RAW.

- Correction d'un problème de bordure 'dans l'inpaint' de reconstruction des hautes lumières opposées. Certains pixels situés sur les bords de l'image n'étaient pas traités par l'algorithme. Cela peut conduire à une petite différence sur le bord de l'image et évitera des bordures rougeâtres.

- Correction d'un problème dans l'algorithme de segmentation de la reconstruction des hautes lumières où l'affichage du masque pouvait être interrompu en raison de l'accès à des données non initialisées.

- Éviter l'écriture XMP si elle n'est pas demandée et si l'image n'a pas été modifiée. Cette règle est désormais respectée lors de l'importation d'images RAW + JPEG.

- S'assurer que l'horodatage de la base de données est toujours défini lors de l'écriture éventuelle d'un fichier XMP 'sidecar'.

- Une solution de contournement a été mise en place pour l'effet de survol de la souris sur les curseurs et les listes déroulantes, qui entraînait le redessinement de l'ensemble du panneau latéral, y compris l'histogramme, à chaque déplacement entre les widgets, réduisant ainsi la consommation de l'unité centrale.

- Correction de l'état de l'opérateur dans le gestionnaire de masques. Lors du déplacement vers le haut ou vers le bas d'un masque, nous nous assurons que le premier masque n'a pas d'opérateur et que le second a un opérateur assigné. Si aucun opérateur n'a encore été défini, l'opérateur d'union par défaut est attribué.

- Dans "Rotation et perspective", si la rotation actuelle est proche de +-180 degrés, l'ajuster en dessinant une ligne d'horizon avec le <kbd>clic droit+drag</kbd> pouvait conduire à l'écrêter à l'extrémité du curseur. Il s'enroule maintenant correctement et une valeur saisie manuellement en dehors de la plage, comme 182, sera également enroulée, jusqu'à -178 degrés.

- Correction du chargement des images monochromes.

- Correction de l'affichage du masque des petits cercles. S'assurer que le masque est toujours visible.

- Correction du chargement de la bibliothèque OpenCL dans le cas où les symboles requis ne sont pas entièrement implémentés.

- Retravailler le dessin des masques pour s'assurer que tous les masques sont dessinés de la même manière. La zone centrale, la bordure et les segments en surbrillance sont désormais affichés de manière cohérente. Le segment en surbrillance est plus visible, ce qui est particulièrement vrai pour le masque de pinceau où le segment en surbrillance était à peine distinguable en raison d'un bogue.

- Définir la taille de l'image EXR importée à l'étendue de la fenêtre de données valide uniquement.

- Traduction correcte des noms de tri de collection dans la fenêtre contextuelle de l'historique des tris de collection récents.

- Correction des options de dématriçage double pour les caméras à capteur Bayer 4 couleurs où seuls VNG4 et PassThrough sont pris en charge.

- Ne pas tronquer la longueur focale sur les vignettes afin d'éviter une perte de précision dans l'affichage des valeurs.

- Permettre au module d'exposition de définir des paramètres neutres pour les images non RAW.

- Correction des masques de détails lors du passage à la chambre noire, ce qui pouvait entraîner un plantage.

- Correction des masques de raffinement dans certains modules (Correction des objectifs, Retouche, Liquéfier, Correction de taches).

- Correction de quelques rares cas où les masques ne sont pas affichés lorsque l'on essaie de les éditer après avoir démarré darktable ou changé de groupe de modules.

- Correction du diaporama ne fonctionnant pas correctement sur les écrans HiDPI.

- Correction de plantages lors de l'utilisation de masques 'raster' après avoir réordonné le pixelpipe.

- Correction du masque de détails pour les images dans les parties agrandies de l'image.

- Permettre l'ajout d'un patch de couleur sur la grille 7x7 du module "Calibration des couleurs" section "Mappage des couleurs"

- Correction de l'effet de raffinement lors de l'utilisation de modules de distorsion tels que "Retouche"  ou "Correction des objectifs".

- Correction d'un ancien bogue potentiel de mémoire dans le code d'interpolation, bien qu'il ne se soit jamais produit en raison de la façon dont ce code est utilisé dans darktable.

- Retravailler la gestion de l'éditeur de métadonnées afin d'éviter toute perte de données.

- Correction de l'importation de préréglages appliqués automatiquement où la limite supérieure de l'ISO, de l'ouverture et de l'exposition pouvait être définie comme limite inférieure.

- Correction de la saisie d'un rapport d'aspect personnalisé dans le module "Cadre décoratif"

- Correction de la mise à jour de l'icône de l'épingle dans le module de filtrage qui pouvait faire planter darktable lors de l'utilisation de certaines combinaisons de filtres spécifiques.

- Correction du message d'évaluation (étoiles) non affiché lors de l'évaluation d'un groupe réduit d'images à l'aide d'un raccourci clavier.

- Correction d'un crash possible dans le module de débruitage astrophoto lorsqu'il est utilisé sur le CPU (pas avec OpenCL).

- Correction mineure des valeurs de référence du Spyder Checkr 48 (v2 - après 2018).

- Correction d'un crash possible dans l'algorithme "ondelette a trous évitant les bords" lors de la manipulation de très petites régions de l'image.

- Ignorer correctement les latitudes/longitudes GPX vides qui pouvaient créer de fausses coordonnées de localisation.

- Correction de l'enregistrement de la position dans l'historique du module "Collections" et dans le module "Collections récentes". Cela permet de s'assurer que l'activation d'une entrée dans l'historique rétablit le décalage de la vignette tel qu'il était lorsque l'entrée a été sauvegardée.

- Éviter un cas possible (et rare) de retournement indésirable de l'image sélectionnée dans la vue d'impression, en raison de la mise à jour des vignettes du bandeau.

## Lua

### Version de l'API

-   La version de l'API est maintenant la 9.1.0

### Ajout  ou modification de la prise en charge des actions par Lua

- L'appel Lua à dt.gui.action est devenu plus flexible, avec la plupart des paramètres optionnels, de sorte que vous pouvez lire l'état focalisé d'un module en faisant simplement `dt.gui.action("iop/filmicrgb", "focus")`.

- Les infobulles affichent les commandes Lua compactes en mode mapping (en ajoutant uniquement le dernier paramètre, instance, si le module supporte le multi-instance) et ont été ajoutées aux menus préréglages et styles.

- Les commandes Lua peuvent être copiées dans le presse-papier, en utilisant <kbd>ctrl+v</kbd> dans le dialogue des raccourcis, à la fois à partir d'une action ou d'un raccourci sélectionné, ou d'un clic droit long en mode mapping (au-dessus d'un widget) ou dans les menus préréglages/styles.

- La commande lua affichée/copiée pour un curseur ou un combobox fixera la valeur qu'il a actuellement.

- Un raccourci peut maintenant être dirigé vers un script Lua qui imite un slider, un dropdown ou un bouton standard, mais qui sélectionne dynamiquement le(s) vrai(s) widget(s) qui le reçoit(vent), en se basant par exemple sur le module qui est focalisé ou activé. L'avantage est que tous les fallbacks fonctionnent normalement, vous pouvez donc lui assigner un bouton midi et le tourner (en maintenant <kbd>shift</kbd> / <kbd>ctrl</kbd> pour accélérer/diminuer) ou le presser pour réinitialiser. Fonctionne quel que soit le widget qui le reçoit.

  En fait, il s'agit d'une alternative beaucoup plus flexible aux faux widgets qui se trouvent sous les modules de traitement. Cela permet aux propriétaires d'un x-touch mini, par exemple, d'utiliser leurs rotors (peu nombreux) de différentes manières, entièrement configurables, tout en travaillant dans différents modules (qui peuvent également être focalisés à l'aide de boutons midi qui s'allument alors). De telles configurations pourraient être partagées à l'aide de https://github.com/darktable-org/lua-scripts.

- Prise en charge des raccourcis vers les curseurs/combos créés en Lua, soit via le mode de mapping visuel, soit dans la boîte de dialogue des raccourcis sous la catégorie Lua. Les éléments et les effets ne sont pas pris en charge.

### Autres changements en Lua

- Ajout d'un champ aspect_ratio à `dt_lua_image_t` pour la récupération de l'orientation de l'image.

- `dt_lua_image_t` respecte maintenant le paramètre show time in milliseconds dans les préférences de lighttable et retournera `exif_datetime_taken` avec les millisecondes lorsque cette option est activée.

- Ajout des champs `final_height, final_width, p_height et p_width à dt_lua_image_t.`

- Deux nouvelles propriétés ont été ajoutées pour obtenir les drapeaux (catégorie, privé) et les synonymes d'un tag.

- L'événement pixelpipe-processing-complete a été déplacé de la fin du pixelpipe de l'image à la fin du pixelpipe de la prévisualisation afin de prendre en compte l'achèvement des événements qui ne mettent à jour que la prévisualisation, comme la mesure de l'exposition ponctuelle dans le module d'exposition.

## Notes

- Lors de l'exportation vers les formats AVIF, EXR, JPEG XL ou XCF, la sélection de métadonnées spécifiques (par exemple, l'étiquette géographique ou le créateur) n'est actuellement pas possible. Pour les formats AVIF, EXR, JPEG XL et XCF, darktable n'inclura aucun champ de métadonnées à moins que l'utilisateur ne sélectionne toutes les cases à cocher dans les options de préférences d'exportation.

- Afin de supporter l'affichage correct des nombres dans darktable, la version minimale supportée de Gtk a dû être augmentée à 3.24.15. Pour les personnes qui ont besoin de construire darktable avec une version plus ancienne, ceci peut être supporté en inversant le changement suivant : supprimez la ligne 241 du fichier darktable.css sur votre système. Voir : [#13166](https://github.com/darktable-org/darktable/issues/13166)
    
- À partir de cette version, une nouvelle politique de support des versions de macOS sera mise en place. Les versions de darktable ne prendront en charge que les versions de macOS qui sont également prises en charge par Apple. Ainsi, la version 4.4 ne prend plus en charge les versions de macOS antérieures à la 11.3.
    

## Changement de dépendences

### Obligatoires

-   ???

### Optionelles

-   ???

## Changements RawSpeed

## Prise en charge des appareils, par rapport à la version 4.2

### Support de base

### Absence de prise en charge du mode de compression

- Apple ProRAW DNGs
- Blackmagic lossless CinemaDNGs
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Samsung Expert RAW DNGs
- Sony lossless

### Préréglages de la balance des blancs

Canon EOS R7
Canon EOS R10

### Profils de bruit

Pas de données pour cette version

### Suspended Support

Aucun échantillon disponible sur [raw.pixls.us](https://raw.pixl.us)

Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
Fujifilm FinePix S9600fd
Fujifilm IS-1
GoPro FUSION
Kodak EasyShare Z980
Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
Leaf Credo 60
Leaf Credo 80
Minolta DiMAGE 5
Olympus SP320
Panasonic DMC-FX150
Pentax Q10
Phase One IQ250
Samsung GX10
Samsung GX20
Samsung EK-GN120
Samsung SM-G920F
Samsung SM-G935F
Sinar Hy6/ Sinarback eXact
 ST Micro STV680

### Traductions
nouvelle traduction anglaise avec les majuscules
 ???
