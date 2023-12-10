---
title: "Version 4.6.0"
aliases:
  - "darktable-4-6-0"
date: "2023-12-21"
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
??? darktable-4.6.0.tar.xz
$ sha256sum darktable-4.6.0-x86_64.dmg
??? darktable-4.6.0-x86_64.dmg
$ sha256sum darktable-4.6.0-arm64.dmg
??? darktable-4.6.0-arm64.dmg
$ sha256sum darktable-4.6.0-win64.exe
??? darktable-4.6.0.exe
```

Lors de la mise à jour à partir de la série stable 4.4.x, gardez à l'esprit que vos modifications seront préservées pendant ce processus,
mais que la nouvelle bibliothèque et la configuration ne seront plus utilisables avec la version 4.2.x.

Il est fortement conseillé de faire d'abord une sauvegarde.  

#### note importante : Pour s’assurer que darktable supporte le format de fichier RAW de votre appareil photo,
veuillez lire [ce post](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri). Vous y apprendrez comment contribuer
à la constitution de l’ensemble d’échantillons d’images (sous licence CC0) pour votre boîtier.


Depuis darktable 4.4 :  


- ??? commits à darktable+rawspeed  
- ??? demandes de pull traitées  
- ??? problèmes fermés  
  
_Veuillez noter que la documentation de darktable n'est pas encore complète pour la version 4.6 et que les contributions
sont très appréciées. Veuillez consulter [le projet documentation](https://github.com/darktable-org/dtdocs#contributing)
pour plus d'informations sur la manière de contribuer._

## Les grandes nouveautés

Voici un résumé des principales fonctionnalités ajoutées à darktable
4.6. Veuillez consulter le manuel de l'utilisateur pour plus de détails sur les
changements individuels (le cas échéant).

- L'historique d'édition est maintenant sauvegardé automatiquement de façon périodique (toutes les 10 secondes),
  lors de l'édition d'images dans la vue chambre noire. L'intervalle d'enregistrement automatique peut
  être modifié (via une préférence) ou l'enregistrement automatique peut être entièrement désactivé (en réglant l'intervalle sur 0).

- Un nouveau module de traitement _rgb primaries_ a été ajouté. Ce module peut être utilisé pour des corrections
  de couleurs délicates ainsi que pour l'étalonnage créatif. Il permet de déplacer les couleurs primaires rouges,
  vertes et bleues en utilisant les paramètres "teinte" et "pureté".

  L'opération sous-jacente sur les pixels est essentiellement la même que le mélange des canaux.

- En outre, le module _sigmoïd_ comprend désormais une nouvelle section _primaires_,
  qui peut être utilisée pour gérer avec élégance les situations d'éclairage difficiles
  (par exemple, les LED) et ajuster l'aspect général de l'image. La modification de ces
  paramètres permet d'obtenir des couchers de soleil agréables, des tons de peau améliorés, etc.
  Cette fonctionnalité ne peut être utilisée qu'avec le mode par canal de Sigmoïd et est
  librement basée sur les idées de Troy Sobotka [AgX](https://github.com/sobotka/AgX-S2O3)
  et de travaux connexes dans la [communauté Blender](https://blenderartists.org/t/feedback-development-filmic-baby-step-to-a-v2/1361663).
  Le preset "smooth" inclus devrait fournir un bon point de départ
  pour d'autres corrections utilisant cette fonctionnalité.

- Lorsque vous travaillez avec les modules Liquifier et Retouche, l'image complète non recadrée est désormais toujours affichée,
  tout recadrage étant indiqué par l'affichage d'un rectangle superposé.
  Cela permet d'utiliser des parties recadrées de l'image sans avoir à désactiver
  le module de recadrage et à le réactiver une fois l'opération terminée.

- Lors d'un panoramique ou d'un zoom dans la vue darkrom, un espace réservé en basse résolution était affiché
  jusqu'à ce que l'image soit entièrement recalculée pour la région nouvellement visible.
  Désormais, si une partie de la vue précédente est encore visible, cette partie sera immédiatement affichée en haute qualité,
  le reste de l'image étant temporairement affiché en basse qualité jusqu'à ce que la Le traitement du pixelpipe soit terminée.

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

 - Un section de code openCL a été mis en œuvre pour la correction des objectifs à l'aide des métadonnées de correction intégrées.
 
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

 - La visualisation et la performance du masque de dématriçage double ont été améliorées.

 - Dans le module de Correction des objectifs, il est désormais possible de définir manuellement une correction supplémentaire du vignettage.

 - Dans le module 3D LUT, l'espace colorimétrique linéaire ProPhoto RGB peut désormais être sélectionné.

 - Les changements suivants ont été apportés à l'implémentation d'OpenCL :
   - Le code de benchmarking a été supprimé, car il ne produit plus de résultats valables sur les ordinateurs d'aujourd'hui.
  
   - L'option "pinned memory transfer" (transfert de mémoire épinglée) a été supprimée de la boîte de dialogue des préférences,
     mais elle peut toujours être définie périphérique par périphérique.

   - Une nouvelle option "utiliser toute la mémoire du périphérique" a été ajoutée à la boîte de dialogue des préférences.
     Sélectionnez cette option pour utiliser toute la mémoire du GPU, à l'exception d'une "marge" de 600 Mo qui est laissée
     libre pour l'utilisation par d'autres applications. Une option similaire était disponible dans les versions antérieures
     de darktable, mais la marge de manœuvre est maintenant augmentée à 600 Mo pour tenir compte de l'utilisation accrue
     de l'accélération GPU sur les systèmes modernes.

   - Un nouvel ensemble d'options a été ajouté dans les préférences onglet traitement, afin de permettre la sélection des pilotes OpenCL souhaités.
  
- Un profil de couleur intégré "P3 affichage RVB" a été ajouté pour une utilisation dans les profils d'entrée, de sortie,
  d'affichage, de travail et d'épreuvage écran.

- Le module de reconstruction des hautes lumières peut désormais être utilisé pour tous les fichiers non raw.
  
- La vitesse de défilement dans la pellicule peut désormais être augmentée en maintenant <kbd>Shift</kbd> pendant le défilement
  (la pellicule se déplace de la moitié des images visibles à la fois). Le fait de maintenir <kbd>Ctrl</kbd> durant le défilement
  produit un zoom sur la pellicule et par conséquent modifie le nombre d'images affichées De ce fait, cela modifie également
  la vitesse obtenue en maintenant <kbd>Maj</kbd>.
  
- Les fichiers PNG exportés intègrent désormais un profil de couleur codé CICP (Coding-Independent Code Points)
  en plus du profil ICC lorsque cela est possible.

- Les fichiers AVIF exportés n'intègrent plus de profil ICC superflu si le profil de couleur peut être encodé en CICP.

- L'amélioration de la mise à l'échelle et du placement des images dans la vue de sélection permet désormais de mieux
  utiliser l'espace disponible sur l'écran.

- Lorsque l'on survole les échantillons dans le module Pipette de couleurs, ces zones sont affichées sur l'image centrale et sur
  l'histogramme (si l'option correspondante est sélectionnée). Il n'est plus nécessaire d'activer le Module pipette de couleur pour ce faire.
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

- Le contenu du de la fenêtre principale des préférences est maintenant (presque) entièrement tiré d'un seul fichier de définition
  (`darktable.xml.in`), ce qui rend sa mise en page beaucoup plus facile à modifier.

- Les menus déroulants de la boîte de dialogue des préférences utilisent désormais les mêmes widgets (bauhaus) que les menus déroulants
  du reste de l'application, offrant ainsi un comportement plus cohérent.

- Le système de configuration dispose désormais d'une meilleure précision des nombres.

- Le module des collections a été retravaillé pour un tri plus cohérent. Tous les ordres de tri par date/heure peuvent désormais être inversés
  (en plaçant la plus ancienne  ou la plus récente  en premier). L'ordre des pellicules peut également être inversé lorsqu'elles sont classées
  par identifiant (ce qui équivaut à la date de première importation de la pellicule). La préférence "trier les pellicules par" a été renommée
  de "id" à "date d'importation" pour plus de clarté.

  Le filtrage des collections basé sur le score (étoile) utilise désormais un texte correct (comme "rejeté" au lieu de -1)
  et les nombres sont remplacés par des étoiles.

  Le module Collections affiche désormais les étiquettes de couleur dans le même ordre que dans le reste de l'interface utilisateur.

- L'ajout d'un mot-clé à une image est désormais considéré comme une "modification" et entraîne la création/mise à jour des fichiers XMP
  associés (sauf si la création des XMP est désactivée).

- Une nouvelle fonctionnalité a été ajoutée pour générer automatiquement des vignettes en arrière-plan pendant que l'utilisateur est inactif
  dans la vue de la table lumineuse. Actuellement, cette fonctionnalité n'est disponible qu'en lançant `darktable-generate-cache` depuis
  la ligne de commande. La nouvelle fonctionnalité est contrôlée par un paramètre de préférence qui définit les tailles de vignettes
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
    défaut au démarrage" (dans prefs/misc/interface) pour le garder désactivé.

  - Le mode de mappage visuel dispose à présent de curseurs de souris améliorés qui indiquent si le widget situé sous le curseur peut se voir
    attribuer un raccourci ou être ajouté au panneau d'accès rapide (ou en être retiré).

  - L'onglet Raccourcis de la boîte de dialogue des préférences explique dorénavant qu'il peut être plus pratique d'utiliser le mode de mappage visuel.

  - Lorsque l'on combine un raccourci avec un mouvement de souris (par exemple <kbd>b+scroll</kbd>)), des actions distinctes peuvent être déclenchées
    par les mouvements vers le haut et vers le bas. Par exemple, <kbd>b+scroll-up</kbd>) pourrait faire défiler les options du panneau supérieur
    et <kbd>b+scroll-down</kbd>) les combinaisons du panneau inférieur.

  - Un problème concernant les fenêtres déroulantes et les fenêtres coulissantes ouvertes via un raccourci, qui se remplissaient immédiatement avec
    le caractère de la touche de raccourci, a été résolu. Ces fenêtres sont désormais intégrées au système de raccourcis, de sorte que la plupart
    des raccourcis non alphanumériques continueront de fonctionner. Si une valeur de liste déroulante est modifiée alors que la fenêtre popup
    est ouverte (par exemple via un calcul automatique dans l'étalonnage des couleurs, un script Lua ou un raccourci midi), la fenêtre popup
    est correctement mise à jour/repositionnée. Après la fermeture d'une fenêtre contextuelle, il est possible de la rouvrir rapidement pour
    saisir une autre valeur en appuyant sur Entrée (à condition que le widget correspondant soit toujours au centre de l'attention).

  - Sur macOS, les raccourcis système, par exemple pour copier et coller, fonctionnent dorénavant selon les paramètres par défaut du clavier
    macOS, c'est-à-dire en utilisant la touche <kbd>commande</kbd> au lieu de la touche <kbd>controle</kbd> originale de style Linux.
    
- Le mode d'évaluation des couleurs ISO 12464 pour la fenêtre de prévisualisation secondaire est désormais activé indépendamment de la fenêtre principale (et sauvegardé entre les sessions). Il est actionné avec une case à cocher dans le fenêtre de configuration affichée lors d'un <kbd>right-click</kbd> sur le bouton bouton "Afficher la deuxième fenêtre" (ou en utilisant le raccourci <kbd>alt+b</kbd> par défaut).
