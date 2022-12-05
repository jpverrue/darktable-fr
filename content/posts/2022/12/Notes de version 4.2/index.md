Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.2.0 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.2.0](https://github.com/darktable-org/darktable/releases/tag/release-4.2.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```
$ sha256sum darktable-4.2.0.tar.xz
XXXX darktable-4.2.0.tar.xz
$ sha256sum darktable-4.2.0.dmg
XXXX darktable-4.2.0.dmg
$ sha256sum darktable-4.2.0.exe
XXXX darktable-4.2.0.exe
```

Lors de la mise à jour à partir de la série stable 4.0.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus, mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec les versions antérieures (4.0.x, 3.x.x, etc).

Il est fortement conseillé de faire d'abord une sauvegarde.

#### Note importante : pour s'assurer que darktable puisse continuer à supporter le format de fichier brut pour votre appareil photo, *s'il vous plaît* lisez [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) pour savoir comment et avec quels fichiers raw sous licence CC0, vous pouvez contribuer afin de vous assurer que nous ayons l'ensemble *complet* d'échantillons bruts pour votre appareil photo !

Depuis darktable 4.0 :

- XXXX commits à darktable+rawspeed
- XXXX demandes de pull traitées
- XXXX problèmes fermés

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable 4.2. Ces fonctionnalités sont décrites plus en détail dans le manuel d'utilisation et dans l'article de blog qui l'accompagne.

- Nouveau module de transformation de l'affichage : "sigmoïde".

- "récupération des hautes lumières" : deux nouveaux algorithmes - "peinture opposée" et "segmentation" - sont proposés. L'algorithme "peinture opposée" s'est avéré très stable et bon dans de nombreuses images. Il a donc été choisi par défaut.

- Une refonte complète de l'affichage des images a été effectuée. Un premier travail a été de créer un affichage d'image facile à utiliser sur la zone centrale. Cette routine prend en charge tous les modes d'affichage : aide à la mise au point et évaluation des couleurs. Cette routine est maintenant utilisée pour la zone de la chambre noire, pour la deuxième fenêtre et les duplicata. Ainsi, la deuxième fenêtre obtient l'affichage de l'aide à la mise au point et, plus important encore, le mode d'évaluation des couleurs qui est une fonctionnalité très utile. Pour réaliser cela correctement, une nouvelle routine a été créée. Elle exécute un pixelpipe séparé qui est entièrement équivalent à celui de la chambre noire. Cela donne un affichage correctement aligné. En utilisant les nouvelles routines pixelpipe et d'affichage, la routine snapshot a été retravaillée. Cette nouvelle version dispose d'instantanés entièrement dynamiques. Les instantanés peuvent être panoramisés et zoomés tout en restant parfaitement alignés avec l'affichage de la chambre noire, ce qui permet une comparaison correcte.

- Ajout d'un aperçu du style dans le module de style de la table lumineuse et dans le style de la chambre noire. L'aperçu est affiché dans l'infobulle lors du survol des entrées de style. L'interface utilisateur de l'infobulle a été remaniée en même temps.

- Le module "correction des objectifs" gagne un support intégré. Certains appareils photo enregistrent  les valeurs de correction de l'objectif dans le fichier EXIF. Ces données sont maintenant récupérées et utilisées par le module afin d'effectuer les corrections correspondantes.

- Ajout du support du format JPEG XL (lecture / écriture).

- Les modules restent entièrement visibles lors de l'ouverture ou de l'extension et se déplacent avec un effet de transition en douceur. Cet effet peut être accéléré ou désactivé dans les préférences --> divers --> temps en ms des transitions de l'interface utilisateur.

- Grande refonte du cache de pixelpipe.

## Autres changements

- Masques
  - Ajout d'un support pour la manipulation des masques sans utiliser le défilement (pour les utilisateurs de tablettes).
  - Le gestionnaire de masques a été amélioré avec une nouvelle section repliable contenant des contrôles pour modifier les propriétés des masques.
  - Il est également possible de modifier un masque correctement partagé par un groupe de masques.
  - Parallèlement, les masques de cercle et d'ellipse ont été améliorés avec de nouvelles commandes pour modifier la taille et l'adoucissement.
  - L'affichage sur le bandeau supérieur a été également amélioré et complété.

- Ajout du support du format WebP en lecture.

- Intégration du profil ICC dans les fichiers WebP lors de l'export.

- Pour les modules contenant plusieurs onglets (filmique RVB, balance couleur RVB, calibration des couleurs, égaliseur de ton, ...), un double clic sur un des onglets réinitialise tous les réglages de l'onglet sans toucher à ceux des autres.

- Prise en charge des formats locaaux pour les données, les dates et les heures dans les infobulles des vignettes.

- Si, sur une action, une commande de script LUA a été définie, elle s'affichera dans l'infobulle de cete action.

- Suppression du support de code SSE des modules "balance des blancs" et "profil de couleurs de sortie", car le code optimisé du compilateur donne une vitesse comparable.

- Ajout de la prise en charge de l'extension de fichier JFIF (JPEG File Interchange Format) qui est un JPEG standard.

- La préférence pour l'application automatique d'une accentuation a été supprimée. On peut ajouter un preset appliqué automatiquement dans le module d'accentuation de la netteté et obtenir le même effet.

- Ajout du support pour la mise à jour des images existantes dans l'exportation Piwigo.

- Les pré-réglages de balance des blancs ont été migrées vers un fichier JSON externe.

- Suppression de la préférence "couleur d'arrière-plan du contrôle de la balance des couleurs et de la balance des blancs" puisque cela peut être fait directement dans le module lui-même.

- Amélioration de la prise en charge des profils pour les formats AVIF et EXR. Assouplit également le lecteur AVIF en n'exigeant pas une conformité totale.

- Le nombre d'images de la collection actuelle est maintenant affiché dans la boîte à outils. Ces informations sont ainsi disponibles même si la zone supérieure est cachée.

- Essaye d'obtenir l'espace couleur pour le fichier PNG à partir du chunk cICP. Ceci a été ajouté lors d'une révision récente de la spécification PNG, nous en tirons donc avantage s'il est présent.

- La lecture des demi-flottants 16 bits pour le format TIFF se fait maintenant en utilisant la bibliothèque Imath.

- Il est maintenant possible de mapper des raccourcis sur les différents controles du module exportation.

- Introduction de l'équilibrage entre OpenCL et CPU lors du tuilage. Cela permet d'utiliser le tuilage CPU si la carte graphique ne dispose pas de suffisamment de mémoire et qu'il faudrait donc gérer un grand nombre de tuiles sur la carte. En fin de compte, le grand nombre de tuiles plus la zone de chevauchement des tuiles rendront l'utilisation d'OpenCL plus lente (voire beaucoup plus lente) que le traitement de l'image sans tuiles sur le CPU.

- En mode aperçu plein écran, le bloc d'affichage des méta données (superposition) n'est pas affiché par défaut. Déplacer le curseur sur la moitié supérieure de l'image l'affichera. Le bloc est toujours caché automatiquement après un certain délai.

- Régler les motifs lumineux des rotateurs midi Behringer b-control (BCR2000/BCF2000)

- Correction de la lecture des métadonnées EXIF lors de l'importation d'EXRs (si souhaité,les fichiers existants doivent être réimportés, rafraîchir les métadonnées n'est pas suffisant).

- Ajout de la prise en charge du défilement des préréglages à l'aide de raccourcis.

- La taille du panneau utilise maintenant la taille de définition de l'écran, ce qui fait que l'affichage initial s'ajuste à la définition de l'écran.

- Permettre un module de géolocalisation étroit. Si le panneau devient petit, il s'enroulera correctement au lieu d'effectuer une ellipse de textes.

- Ajouter quelques actions supplémentaires dans l'écran d'aide principal (affiché avec la touche <kbd>h</kbd>).

- Le module lensfun est maintenant une dépendance obligatoire. Cela garantira que toutes les constructions de darktable auront le module de correction d'objectifs. Aussi, une édition avec ce module ne sera pas perdue parce que le module est manquant suite à une mauvaise compilation. de plus, cela simplifie le code, ce qui est aussi une bonne chose.

- Un nouveau module virtuel "focused" est introduit. Ce module peut contenir des raccourcis clavier qui peuvent être appliqués au module actif. Par exemple, un raccourci clavier concernant le 1er curseur sera utilisable pour modifier l'exposition dans le module "exposition ou la rotation dans le module "rotation et perspective". Il peut être configuré pour les curseurs, les comboboxes, les boutons, les onglets et le module ciblé lui-même.

## Correction de bogues

- Utiliser correctement le profil de couleur d'affichage dans le diaporama. Ceci n'était pas fait, donc les images ignoraient le profil de couleur et étaient affichées (très différemment) que sur la table lumineuse ou la chambre noire.

- Honorer correctement le statut "off" des modules dans un style. L'utilisation d'un style dans le module d'exportation peut maintenant être utilisé pour désactiver un module activé dans la pile d'historique.

- Corriger la taille et la position du popup bauhaus.

- Fixe le nom de l'ordre des modules lors d'une réinitialisation.

- Ne pas afficher les actions de module dépréciées dans la section des raccourcis des préférences.

- Correction de certains positionnements de popup de widgets bauhaus sur Wayland.

- Correction d'un problème de vitesse lors de l'importation de grands dossiers avec des fichiers XMP contenant de nombreuses métadonnées.

- Correction de certaines mises à jour manquantes de l'interface graphique dans le module "liquéfier". Dans certains cas, la modification de la force d'un nœud dans une courbe ou une ligne ne mettait pas correctement à jour les valeurs de déplacement.

- Correction d'une mauvaise interaction entre le mode évaluation des couleurs (icône ampoule en C.N.) et les panneaux.

- Correction l'affichage de la mise au point à l'infini dans les informations sur l'image.

- Correction de la traduction des messages du module de retouche affichés dans le bandeau.

- Lors de l'importation, nous conservons la propriété dossier ou pellicule si elle est active. Si un autre mode de collecte a été sélectionné, nous utilisons le mode péliculle par défaut.

- Correction de la conversion L*a*b* dans l'importation TIFF.

- Correction de l'indicaton de surbrillance dans tous les modes de "reconstruction des hautes lumières".

- Correction de l'indicateur visuel de reconstruction de la lumière pour les fichier raw X-Trans.

- Correction de l'annulation/rétablissement après un appliquation d'un style  via un raccourci.

- Ne pas reconstruire toute l'arborescence lorsque vous supprimez ou modifiez un préréglage dans les préférences. Cela donne une meilleure stabilité à l'interface utilisateur.

- Correction de certains rafraîchissements du gestionnaire de masques lors du changement d'images.

- Correction de la sélection du masque après la création d'un masque continu.

- Corriger le nom et l'info-bulle dans les préférences du module "dématriçage" pour qu'ils soient corrects pour tous les types de capteurs.

- Suppression de la vérification automatique de la marge de manœuvre d'OpenCL, car elle causait plus de problèmes qu'elle n'en résolvait.

- Correction du curseur non clignotant dans le dialogue de recherche du module de traitement. Ce  donnait l'impression que le module n'était pas actif.

- Enregistrer correctement le niveau de noir de la librairie "libraw".

- Correction de l'état de certains boutons de l'interface utilisateur dans le module de retouche lors du changement d'image.

- Correction de la sélection des images non modifiées.

- Les widgets de la section réduite ne sont plus désactivés, ce qui les rend actionnables via un raccourci.

- Correction d'une coquille empêchant l'expansion correcte de la variable $(FOLDER.PICTURES).

- Corrige le chargeur PNM (qui pouvait afficher des images cassées et toujours de mauvaises couleurs).

- Correction du dessin de la zone de la "pipette de couleur" lorsque la zone est au bord de l'image. Lorsque la souris sort des bords de l'image, nous ne perdons plus l'action d'édition.

- Un ancien bogue dans la gestion du cache a été corrigé. Cela pouvait avoir différents effets comme l'absence d'un recalcul de l'affichage après une paramètres ou un simple crash dans la chambre noire.

- Correction de l'état de l'interface de certains boutons à bascule qui n'étaient pas correctement mis à jour.

## Lua

- La version de l'API est passée à 9.0.0

- suppression des fonctions du comparateur darktable.gui.libs.filter.sort|sort order|rating|rating.

- nom de fichier supprimé dans le type de données dt_lua_snapshot_t.

- darktable.gui.libs.snapshot met désormais à jour l'écran après un changement de direction ou de rotation.

- le type de données lua snapshot récupère correctement le nom du snapshot.

## Notes


## Dépendances modifiées

N/A

## Changements RawSpeed


## Prise en charge des appareils, par rapport à la version 4.0

### Support de base


### Préréglages de la balance des blancs


### Profils de bruit


### Matrices de couleurs personnalisées

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

## Traductions

- Albanais
- Turc (nouveau)
