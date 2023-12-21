---
title: "Version 4.6.0"
aliases:
  - "darktable-4-6-0"
date: "2023-12-21"
pinned: true
featured: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
authors:
  - "jipivy"
coverImage: "images/dt_logo-4.6.0.png"
---

La version 4.6.0 de darktable est sortie aujourd'hui.

Voici la traduction française des notes de version.

Merci à [Deepl](https://deepl.com/) pour l'aide précieuse.

<div align="right">Jean-Pierre Verrue</div>

___

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.6.0 !

La version github est disponible ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.6.0](https://github.com/darktable-org/darktable/releases/tag/release-4.6.0).

Comme toujours, n'utilisez pas le fichier tarball autogénéré fourni par
github, mais uniquement notre fichier tar.xz. Les sommes de contrôle sont :

```
$ sha256sum darktable-4.6.0.tar.xz
724b27e3204d1822de6dc53ea090a6b1ce55f7c32226d34642689775c68aacc2  darktable-4.6.0.tar.xz
$ sha256sum darktable-4.6.0-x86_64.dmg
e4e53cc1ec6a5800029f39728c024882a0357458f5c8d8e0ff16dfe034e701ed  darktable-4.6.0-x86_64.dmg
$ sha256sum darktable-4.6.0-arm64.dmg
c2649a07410d70f5da57f9c3583f24c6a97adb994924af88f132a2232ddf7ab4  darktable-4.6.0-arm64.dmg
$ sha256sum darktable-4.6.0-win64.exe
765fc4d9e67937663253f7cc4d20d4ba829e910ff92626c06dc0846e2ddc77de  darktable-4.6.0.exe

```

Lors de la mise à jour à partir de la série stable 4.4.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus,
mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.4.x.

Il est fortement conseillé de faire d'abord une sauvegarde.  

#### note importante : Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil photo,
veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri). Vous y apprendrez comment contribuer
à la constitution de l’ensemble d’échantillons d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.4 :  


- 1648 commits à darktable+rawspeed  
- 553 demandes de pull traitées  
- 49 problèmes fermés  
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 4.6 et que les contributions
sont très appréciées. Veuillez consulter [le projet documentation](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable
4.6. Veuillez consulter le manuel de l'utilisateur pour plus de détails sur les
changements individuels (le cas échéant).

- L'historique d'édition est maintenant sauvegardé automatiquement de façon périodique (toutes les 10 secondes),
  lors de l'édition d'images dans la vue chambre noire. L'intervalle d'enregistrement automatique peut
  être modifié (via une Préférence) ou l'enregistrement automatique peut être entièrement désactivé (en réglant l'intervalle sur 0).

- Un nouveau module de traitement _primaires RVB_ a été ajouté. Ce module peut être utilisé pour des corrections
  de couleurs délicates ainsi que pour l'étalonnage créatif. Il permet de déplacer les couleurs primaires rouges,
  vertes et bleues en utilisant les paramètres "teinte" et "pureté".

  L'opération sous-jacente sur les pixels est essentiellement la même que le mélange des canaux.

- En outre, le module Sigmoïde comprend désormais une nouvelle section _primaires_,
  qui peut être utilisée pour gérer avec élégance les situations d'éclairage difficiles
  (par exemple, les LED) et ajuster l'aspect général de l'image. La modification de ces
  paramètres permet d'obtenir des couchers de soleil agréables, des tons de peau améliorés, etc.
  Cette fonctionnalité ne peut être utilisée qu'avec le mode par canal de Sigmoïde et est
  librement basée sur les idées de Troy Sobotka [AgX](https://github.com/sobotka/AgX-S2O3)
  et de travaux connexes dans la [communauté Blender](https://blenderartists.org/t/feedback-development-filmic-baby-step-to-a-v2/1361663).
  Le preset "smooth" inclus devrait fournir un bon point de départ
  pour d'autres corrections utilisant cette fonctionnalité.

- Lorsque vous travaillez avec les modules Liquifier et Retouche, l'image complète non recadrée est désormais toujours affichée,
  tout recadrage étant indiqué par l'affichage d'un rectangle superposé.
  Cela permet d'utiliser des parties recadrées de l'image sans avoir à désactiver
  le module de recadrage et à le réactiver une fois l'opération terminée.

- Lors d'un panoramique ou d'un zoom dans la vue chambre noire, un espace réservé en basse résolution était affiché
  jusqu'à ce que l'image soit entièrement recalculée pour la région nouvellement visible.
  Désormais, si une partie de la vue précédente est encore visible, cette partie sera immédiatement affichée en haute qualité,
  le reste de l'image étant temporairement affiché en basse qualité jusqu'à ce que le traitement du pixelpipe soit terminée.

  Ceci a été réalisé dans le cadre d'une refonte complète de l'affichage des images de la chambre noire,
  qui a également permis de supprimer certains sauts gênants lors du remplacement de l'espace réservé
  de basse résolution par des données d'image recalculées, ou lors du passage de la vue complète à la vue recadrée
  (lorsque les modules Recadrer, Retouche ou Liquéfier perdent le focus).
  
## Amélioration des performances

- OpenCL est désormais initialisé en arrière-plan immédiatement après le lancement de l'interface utilisateur de darktable,
  la progression étant indiquée par une série de messages popup.
  Auparavant, cette opération était effectuée avant le lancement de l'interface principale,
  ce qui pouvait entraîner des délais importants (parfois plus d'une minute)
  entre l'ouverture de darktable par l'utilisateur et l'apparition de quoi que ce soit à l'écran,
  donnant l'impression que darktable n'avait pas démarré. Notez que le traitement sera plus lent
  (puisque darktable n'utilisera que le CPU) jusqu'à ce qu'OpenCL soit complètement initialisé.

 - Un bloc de code OpenCL a été écrit pour accélérer la correction des objectifs à l'aide des métadonnées de correction intégrées.
 
 - La vitesse d'affichage des images dans la vue Carte a été augmentée de 25 %.
 
 - La vitesse d'exportation a été améliorée pour les images JPEG 2000 et TIFF noir et blanc.
 
 - Le module Aberrations chromatiques est maintenant environ 10% plus rapide lorsqu'il est exécuté sur le CPU.
  
## Autres changements

 - Le module Pixels chauds prend désormais en charge les images monochromes.

 - Le widget de superposition des guides a été supprimé du module de retouche,
   car il n'est pas nécessaire (vous pouvez toujours afficher le guide globalement).
   
 - Une session d'importation de longue durée peut désormais être annulée en cliquant
   sur la croix dans la barre de progression en bas à gauche de l'écran.

 - L'orientation automatique est désormais prise en charge lors de l'importation d'images AVIF/HEIF
   (nécessite au moins libavif 0.9.2 et/ou libheif 1.16.0).

 - Il est désormais possible de visualiser les masques matriciels (raster) de la même manière que les autres
   types de masques en cliquant sur l'icône de visualisation des masques.

 - Dans le module Dématriçage et en cas de dématriçage double (par exemple AMaZE + VNG4), la visualisation et la performance du masque ont été améliorées.

 - Dans le module de Correction des objectifs, il est désormais possible de définir manuellement une correction supplémentaire du vignettage.

 - Dans le module 3D LUT, l'espace colorimétrique linéaire ProPhoto RGB peut désormais être sélectionné.

 - Les changements suivants ont été apportés à l'implémentation d'OpenCL :
   - Le code de benchmarking a été supprimé, car il ne produit plus de résultats valables sur les ordinateurs d'aujourd'hui.
  
   - L'option "pinned memory transfer" (transfert de mémoire épinglée) a été supprimée de la boîte de dialogue des Préférences,
     mais elle peut toujours être définie périphérique par périphérique.

   - Une nouvelle option "utiliser toute la mémoire du périphérique" a été ajoutée à la boîte de dialogue des Préférences.
     Sélectionnez cette option pour utiliser toute la mémoire du GPU, à l'exception d'une "marge" de 600 Mo qui est laissée
     libre pour l'utilisation par d'autres applications. Une option similaire était disponible dans les versions antérieures
     de darktable, mais la marge de manœuvre est maintenant augmentée à 600 Mo pour tenir compte de l'utilisation accrue
     de l'accélération GPU sur les systèmes modernes.

   - Un nouvel ensemble d'options a été ajouté dans les Préférences onglet traitement, afin de permettre la sélection des pilotes OpenCL souhaités.
  
- Un profil de couleur intégré "P3 affichage RVB" a été ajouté pour une utilisation dans les profils d'entrée, de sortie,
  d'affichage, de travail et d'épreuvage écran.

- Le module de reconstruction des hautes lumières peut désormais être utilisé pour tous les fichiers non raw.
  
- La vitesse de défilement dans la pellicule peut désormais être augmentée en maintenant <kbd>Shift</kbd> pendant le défilement
  (la pellicule se déplace de la moitié des images visibles à la fois). Le fait de maintenir <kbd>Ctrl</kbd> durant le défilement
  produit un zoom sur la pellicule et par conséquent modifie le nombre d'images affichées. De ce fait, cela modifie également
  la vitesse obtenue en maintenant <kbd>Maj</kbd>.
  
- Les fichiers PNG exportés intègrent désormais un profil de couleur codé CICP (Coding-Independent Code Points)
  en plus du profil ICC lorsque cela est possible.

- Les fichiers AVIF exportés n'intègrent plus de profil ICC superflu si le profil de couleur peut être encodé en CICP.

- L'amélioration de la mise à l'échelle et du placement des images dans la vue de sélection permet désormais de mieux
  utiliser l'espace disponible sur l'écran.

- Lorsque l'on survole les échantillons dans le module Pipette de couleurs, ces zones sont affichées sur l'image centrale et sur
  l'histogramme (si l'option correspondante est sélectionnée). Il n'est plus nécessaire d'activer le module Pipette de couleur pour ce faire.
  Ce comportement amélioré est utile, par exemple, lors de l'étalonnage.

- Il est désormais possible d'afficher une info-bulle pour un curseur ou une liste déroulante et une info-bulle distincte
  pour le bouton situé à sa droite (généralement un bouton de sélection de couleur). Cela n'était pas possible dans les versions précédentes
  de darktable, et posait un problème lorsque le bouton n'était pas directement lié au curseur (par exemple, un bouton pour l'affichage d'un masque).

- Maintenir la touche <kbd>Ctrl</kbd> tout en double-cliquant sur un curseur ou une liste déroulante dans un module de traitement
  restaure désormais tout préréglage appliqué automatiquement.

- Lorsque plusieurs formes dessinées sont regroupées (par exemple dans le masque d'un module), le module de gestion des masques
  affiche désormais une coche devant le mode de combinaison actif (dans le menu contextuel), lorsque l'on clique avec le bouton droit de la souris
  sur l'une des formes constitutives. Ceci est généralement plus facile à lire que les icônes du "diagramme de Venn"
  dans l'interface utilisateur du module principal.

- Des mnémoniques ont été ajoutés aux boîtes de dialogue et des actions par défaut ont été attribuées, de sorte qu'une pression
  sur <kbd>Enter</kbd> déclenche l'action correcte et ferme la boîte de dialogue.

- S'ils sont disponibles, plus d'attributs d'OpenEXR 3.2.0 peuvent désormais être extraits et affichés dans le module d'information sur l'image.

- Les filtres Objectifs et Boîtiers ont été ajoutés au module Filtres de collections.

- Les exportations AVIF ont été modifiées de manière à ce qu'il n'y ait plus de conversion en YUV pour le "lossless". La logique de sélection
  du quantificateur a été mise à jour et "lossy" est maintenant la valeur par défaut.

- Le contenu de la fenêtre principale des Préférences est maintenant (presque) entièrement tiré d'un seul fichier de définition
  (`darktableconfig.xml.in`), ce qui rend sa mise en page beaucoup plus facile à modifier.

- Les menus déroulants de la boîte de dialogue des Préférences utilisent désormais les mêmes widgets (bauhaus) que les menus déroulants
  du reste de l'application, offrant ainsi un comportement plus cohérent.

- Le système de configuration dispose désormais d'une meilleure précision des nombres.

- Le module Collections a été retravaillé pour un tri plus cohérent. Tous les ordres de tri par date/heure peuvent désormais être inversés
  (en plaçant la plus ancienne  ou la plus récente  en premier). L'ordre des pellicules peut également être inversé lorsqu'elles sont classées
  par identifiant (ce qui équivaut à la date de première importation de la pellicule). La Préférence "trier les pellicules par" a été renommée
  de "id" à "date d'importation" pour plus de clarté.

  Le filtrage des collections basé sur le score (étoile) utilise désormais un texte correct (comme "rejeté" au lieu de -1)
  et les nombres sont remplacés par des étoiles.

  Le module Collections affiche désormais les étiquettes de couleur dans le même ordre que dans le reste de l'interface utilisateur.

- L'ajout d'un mot-clé à une image est désormais considéré comme une "modification" et entraîne la création/mise à jour des fichiers XMP
  associés (sauf si la création des XMP est désactivée).

- Une nouvelle fonctionnalité a été ajoutée pour générer automatiquement des vignettes en arrière-plan pendant que l'utilisateur est inactif
  dans la vue de la table lumineuse. Actuellement, cette fonctionnalité n'est disponible qu'en lançant `darktable-generate-cache` depuis
  la ligne de commande. La nouvelle fonctionnalité est contrôlée par un paramètre des Préférences qui définit les tailles de vignettes
  à générer en arrière-plan (par défaut "jamais").

- Deux nouvelles variables ont été introduites pour permettre l'affichage du facteur de recadrage de l'appareil ("EXIF.CROP_FACTOR") et de la
  longueur focale équivalente à 35 mm ("EXIF.FOCAL.LENGTH.EQUIV").

- Les guides d'harmonie des couleurs dans le module scopes sont désormais sauvegardés et restaurés pour chaque image. Il n'est donc plus
  nécessaire de réinitialiser les guides lorsque l'on revient à une édition précédente. Ces informations sont également stockées dans
  le fichier XMP et peuvent donc être consultées lors du partage des modifications ou de la réimportation d'une collection.

- Il est désormais possible de contrôler le sous-échantillonnage de la chroma dans les exportations JPEG.

  Cela permet à l'utilisateur de réduire la résolution des couleurs, ce qui se traduit souvent par des fichiers beaucoup plus petits qui
  sont pratiquement impossibles à distinguer des images contenant plus d'informations sur les couleurs.

  D'un autre côté, certaines images seront plus belles lorsque la résolution chromatique est maximisée. Il s'agit notamment des images
  comportant de petits détails colorés entourés d'un fond uni (comme les captures d'écran avec du texte coloré).

- L'option permettant d'ignorer les fichiers JPEG lors de l'importation est désormais obsolète, étant donné que de nombreux appareils
  photo peuvent également produire des images HEIF. Cette option a donc été modifiée pour ignorer tous les fichiers non bruts.

- Le module Correction des objectifs prend désormais en charge les métadonnées intégrées des fichiers .ORF d'Olympus pour la correction
  de la distorsion et de l'aberration chromatique.

  Cette correction est équivalente à celle appliquée par l'appareil photo aux JPEG de l'appareil. Pour les appareils plus anciens
  qui n'appliquent pas de correction de l'aberration chromatique aux JPEG, les informations requises sont également exclues des métadonnées
  intégrées, de sorte que darktable ne pourra pas appliquer de corrections.

  La correction du vignettage basée sur les métadonnées intégrées n'est pas prise en charge. Cependant, si l'option "Shading Compensation"
  de l'appareil photo est activée, la correction du vignettage aura déjà été appliquée aux données du fichier brut.

- Le système de raccourcis a fait l'objet de plusieurs améliorations :
  
  - La suppression ou l'écrasement d'un raccourci par défaut le place désormais dans la catégorie des "raccourcis par défaut désactivés",
    d'où il peut être restauré en appuyant sur la touche <kbd>Delete</kbd>. Il n'est plus nécessaire de décocher la case "charger les raccourcis par
    défaut au démarrage" (dans Préférences -> Divers -> Interface) pour le garder désactivé.

  - Le mode de mappage visuel dispose à présent de curseurs de souris améliorés qui indiquent si le widget situé sous le curseur peut se voir
    attribuer un raccourci ou être ajouté au panneau d'accès rapide (ou en être retiré).

  - L'onglet Raccourcis de la boîte de dialogue des Préférences explique dorénavant qu'il peut être plus pratique d'utiliser le mode de mappage visuel.

  - Lorsque l'on combine un raccourci avec un mouvement de souris (par exemple <kbd>b+molette</kbd>), des actions distinctes peuvent être déclenchées
    par les mouvements vers le haut et vers le bas. Par exemple, (<kbd>b+molette-haut</kbd>) pourrait faire défiler les options du panneau supérieur
    et (<kbd>b+molette-bas</kbd>) les combinaisons du panneau inférieur.

  - Un problème concernant les fenêtres déroulantes et les fenêtres coulissantes ouvertes via un raccourci, qui se remplissaient immédiatement avec
    le caractère de la touche de raccourci, a été résolu. Ces fenêtres sont désormais intégrées au système de raccourcis, de sorte que la plupart
    des raccourcis non alphanumériques continueront de fonctionner. Si une valeur de liste déroulante est modifiée alors que la fenêtre popup
    est ouverte (par exemple via un calcul automatique dans l'étalonnage des couleurs, un script Lua ou un raccourci MIDI), la fenêtre popup
    est correctement mise à jour/repositionnée. Après la fermeture d'une fenêtre contextuelle, il est possible de la rouvrir rapidement pour
    saisir une autre valeur en appuyant sur <kbd>Entrée</kbd> (à condition que le widget correspondant ait toujours le focus).

  - Sur macOS, les raccourcis système, par exemple pour copier et coller, fonctionnent dorénavant selon les paramètres par défaut du clavier
    macOS, c'est-à-dire en utilisant la touche <kbd>commande</kbd> au lieu de la touche <kbd>controle</kbd> originale de style Linux.
    
- Le mode d'évaluation des couleurs ISO 12464 pour la fenêtre de prévisualisation secondaire est désormais activé indépendamment de la fenêtre principale (et sauvegardé entre les sessions). Il est actionné avec une case à cocher dans le fenêtre de configuration affichée lors d'un <kbd>clic-droit</kbd> sur le bouton bouton "Afficher la deuxième fenêtre" (ou en utilisant le raccourci <kbd>alt+b</kbd> par défaut).

## Correction de bogues

- Correction de problèmes avec les vérifications de la plateforme OpenCL qui provoquaient des blocages.

- Correction du calcul de la taille des widgets redimensionnables en fonction de la taille des lignes de leur contenu.

- Correction d'un bogue dans le module filtres de collection où la conjonction de plusieurs filtres n'était pas gérée correctement.

- Correction de la détection de la distance de mise au point pour les corrections d'objectifs à monture Nikon Z.

- Correction d'un recadrage incorrect des données du capteur pour les fichiers sRaw dng.

- Application de la matrice de couleurs LightRoom uniquement lors de l'importation d'un fichier XMP LightRoom authentique.

- Correction d'un dysfonctionnement lors de l'augmentation du nombre de collections récentes.

- Correction d'un dysfonctionnement lors du clic et du déplacement de la ligne d'adoucissement sur un masque "chemin".

- Correction d'un crash lors de l'application du profil ICC CMYK soft-proof.

- Les bordures blanches pour l'évaluation des couleurs ISO 12464 (activées avec Ctrl+b) sont maintenant correctement dimensionnées et placées
  à tous les niveaux de zoom. Elles ne clignotent plus lorsque l'on passe de l'aperçu de basse qualité à l'aperçu de haute qualité, à la fois
  dans la vue centrale et dans la fenêtre d'aperçu secondaire.

- Correction d'un problème de téléchargement vers Piwigo lorsque l'option "Sur conflit" était réglée sur "Ne pas vérifier".

- Correction de plusieurs problèmes liés à la molette de défilement de la souris sous macOS lorsqu'elle est utilisée en combinaison avec la
  touche de modification <kbd>Maj</kbd> (largeur des harmonies de couleurs, hauteur du module, date/heure de géolocalisation, ...).

- Lors du chargement d'un fichier XMP sidecar depuis le disque, résolution d'un problème avec lequel le "numéro de clone" assigné était
  déjà présent dans la base de données. Ce problème a été résolu en recalculant le "numéro de clone" au moment de l'importation
  pour tous les clones.

- Pour les grandes collections sur la table lumineuse et lors de l'utilisation de petites vignettes (plus de 15 par ligne), l'utilisation de la
  barre de défilement ou du défilement de la souris pour se déplacer vers le haut ou vers le bas pouvait être lente. La réactivité de la table
  lumineuse dans ce scénario a été considérablement améliorée et est maintenant rapide et réactive même avec ~50k images et 20 vignettes par ligne.

- Correction des erreurs de pixels dans le modue Aberration chromatique RAW et le module Dématriçage avec la méthode LMMSE, ce qui a permis
  de réduire le bruit.

- Correction du mode "évite le décalage des couleurs" dans le module Aberrations chromatiques RAW.

- Correction du module d'instantané afin que les instantanés des images supprimées ne soient plus accessibles - cela provoquait auparavant
  des plantages lors de la tentative d'affichage d'un instantané d'une image supprimée.

- Correction d'un plantage potentiel lors de l'utilisation d'un profil ICC non pris en charge pour l'épreuvage écran.

- Correction de plusieurs problèmes lors du calcul des bordures dans le module Recadrer. Pour une bordure de 0 % en bas ou à droite,
  une bordure d'un seul pixel était parfois affichée, en fonction de la taille de l'exportation ou du niveau de zoom.

  Notez qu'une bordure de 0 % ne signifie pas nécessairement qu'il n'y a pas de bordure du tout, si le rapport d'aspect choisi ne correspond pas
  au rapport d'aspect de l'image.

- Le masque de luminance interne de l'égaliseur de tons a été rendu plus résistant aux changements de distorsion effectués avec des modules
  tels que Correction des objectifs, Recadrer, etc. Après avoir activé un recadrage, le curseur de l'égaliseur de tons affichera désormais
  les valeurs de luminance correctes du masque lorsqu'il survolera l'image dans la chambre noire.

- Correction du calcul de la mémoire graphique requise pour les modules effectuant des opérations de fusion, ce qui permet d'éviter
  les plantages liés à OpenCL.

- Ajout de la possibilité de calculer le facteur de recadrage pour les appareils photo qui n'incluent pas cette information dans leurs
  métadonnées Exif.

- Correction de plusieurs bogues liés aux masques adoucis.

- Correction d'un problème de mise à l'échelle du DPI sur macOS qui faisait que certains éléments de l'interface graphique étaient rendus trop petits.

## Lua

### Version de l'API

-   La version de l'API est maintenant la 9.2.0

### Correction de bogues

- Correction du Scripts_installer pour gérer les noms d'utilisateurs avec des espaces sous Windows.

### Autres changements Lua

- Autoriser l'accès à l'horodatage de l'image (change_timestamp).

## Notes

- Lors de l'exportation vers les formats AVIF, EXR, JPEG XL ou XCF, la sélection de métadonnées spécifiques (par exemple, géomarquage ou créateur)
  n'est actuellement pas possible. Pour les formats AVIF, EXR, JPEG XL et XCF, darktable n'inclura aucun champ de métadonnées à moins que l'utilisateur
  ne sélectionne toutes les cases à cocher dans les options de Préférence du module d'exportation.

- Afin de supporter l'affichage correct des nombres dans darktable, la version minimale supportée de Gtk a dû être augmentée à 3.24.15. Pour les
  personnes qui ont besoin de construire darktable avec une version plus ancienne, cela peut être réalisé en supprimant la ligne 241 du fichier
  darktable.css sur votre système. Voir : [#13166](https://github.com/darktable-org/darktable/issues/13166)

- À partir de la version 4.4, une nouvelle politique de prise en charge des versions de macOS a été mise en place - les versions de darktable
  ne prendront désormais en charge que les versions de macOS qui sont également prises en charge par Apple. La version 4.6 ne prend donc plus
  en charge les versions de macOS antérieures à la version 12.5.

## Changement de dépendances

### Obligatoires

- Sans changement

### Optionelles

- Bump libavif to 0.9.2

## Changements RawSpeed

- Sans changement

## Prise en charge des appareils, par rapport à la version 4.4

### Support de base

- Canon EOS Kiss F
- Canon EOS Kiss X50
- Canon EOS Kiss X90
- Canon IXY 220F (dng, chdk)
- Canon PowerShot SX220 HS (chdk)
- Fujifilm FinePix SL1000
- Fujifilm X-S20 (compressed)
- ImBack ImB35mm (chdk)
- Leica M10-D (dng)
- Leica M10-P (dng)
- Leica M10-R (dng)
- Leica M11-P (dng)
- Leica Q2 Monochrom (dng)
- Leica SL2 (dng)
- Leica SL2-S (dng)
- Nikon Coolpix A1000 (12bit-uncompressed)
- Nikon Z f (14bit-compressed)
- OM System TG-7
- Panasonic DC-TZ200D (3:2)
- Panasonic DC-TZ202D (3:2)
- Panasonic DC-TZ220 (3:2)
- Panasonic DC-TZ220D (3:2)
- Panasonic DC-ZS200D (3:2)
- Panasonic DC-ZS220 (3:2)
- Panasonic DC-ZS220D (3:2)
- Panasonic DMC-G10 (3:2, 16:9, 1:1)
- Panasonic DMC-GM1S (4:3, 3:2, 16:9, 1:1)
- Pentax K-3 Mark III Monochrome
- Pentax KF
- Samsung EK-GN120
- Samsung G920F (dng)
- Samsung G935F (dng)
- Samsung GX10 (dng)
- Samsung GX20 (dng)
- Sigma fp (dng)
- Sigma fp L (dng)
- Sigma sd Quattro (dng)
- Sigma sd Quattro H (dng)
- Sinar eVolution 75
- Sony ILCE-6700
- Sony ILCE-7CM2
- Sony ILCE-7CR
- Sony ILME-FX3
- Sony ZV-E1

### Préréglages de la balance des blancs

- Leica M (Typ 240)
- Olympus E-P7
- Olympus TG-6
- Sony ILCE-7CM2

### Profils de bruit

- Canon IXY 220F
- Nikon Z f
- Olympus E-P7
- Pentax *ist DS
- Sony ILCE-6700

### Absence de prise en charge du mode de compression

- Apple ProRAW DNGs
- CinemaDNG lossless (Blackmagic, DJI, etc.)
- Fujifilm lossy RAFs
- Nikon high efficiency NEFs
- Samsung Expert RAW DNGs
- Sony downsized lossless ARWs ("M" for full-frame, "S" for full-frame & APS-C)

### Support suspendu

La prise en charge des caméras suivantes est suspendue car aucun échantillon n'est disponible sur raw.pixls.us :

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
- Sinar Hy6/ Sinarback eXact
- ST Micro STV680

## Traductions

- Albanais
- Portugais (Brésilien)
- Chinois (Simplifié)
- Chinois (Traditionel)
- Tchèque
- Néerlandais
- Espagnol Européen
- Finlandais
- Français
- Allemand
- Hongrois
- Italien
- Japonais
- Polonais
- Russe
- Slovénien
- Ukrainien

