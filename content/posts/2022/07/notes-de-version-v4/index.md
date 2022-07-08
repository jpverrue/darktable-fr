---
title: "Notes de version darktable 4.0.0"
date: "2022-07-05"
featured: true
pinned: true
categories:
  - "actualites"
  - "featured"
tags:
  - "featured"
coverImage: "darktable-4-0-0.png"
---

[TurboGit a](https://github.com/TurboGit) publié ceci Il y a 3 jours

Nous sommes fiers d'annoncer la nouvelle version de darktable, 4.0.0 !

La version de github est ici : [https://github.com/darktable-org/darktable/releases/tag/release-4.0.0](https://github.com/darktable-org/darktable/releases/tag/release-4.0.0) .

Lors de la mise à jour à partir de la série stable 3.8.x, veuillez garder à l'esprit que vos modifications seront conservées pendant ce processus, mais la nouvelle bibliothèque et la nouvelle configuration ne seront plus utilisables avec 3.8.x. Il est fortement conseillé de faire d'abord une sauvegarde.

> Remarque importante : pour vous assurer que darktable peut continuer à prendre en charge le format de fichier brut pour votre appareil photo, veuillez lire [cet article](https://discuss.pixls.us/t/raw-samples-wanted/5420?u=lebedevri) sur comment / quels échantillons bruts vous pouvez contribuer pour vous assurer que nous avons l'ensemble complet d'échantillons bruts pour votre appareil photo sous licence CC0 !

Depuis la version 3.8 de darktable :

-   Près de 1600 commits ont été publiés sur darktable + rawspeed
    
-   586 pull requests traitées
    
-   123 problèmes résolus
    

## Les Points les plus importants

Ce qui suit est un résumé des principales fonctionnalités ajoutées à darktable 4.0. Ces fonctionnalités sont décrites plus en détail dans le manuel d'utilisation et le billet de blog qui l'accompagne.

-   Mappage des couleurs et de l'exposition  
    Une nouvelle fonctionnalité dans les modules "exposition" et "étalonnage des couleurs" vous permet de définir et d'enregistrer une couleur/exposition cible pour les sélecteurs de couleurs, afin de faire correspondre n'importe quel objet source de l'image avec une couleur cible arbitraire.  
    Cela peut être utilisé pour effectuer une balance des blancs  
    (adaptation chromatique) par rapport à des objets non gris de couleur connue, ou pour assurer la cohérence des couleurs d'un objet sur une série d'images.
    
-   Filmique v6  
    Filmique v6 introduit une nouvelle science des couleurs. Cette modification supprime la désaturation obligatoire proche du blanc moyen et du noir et la remplace par un véritable mappage de gamme par rapport à l'espace colorimétrique de sortie (ou d'exportation). Cela permet d'obtenir des couleurs plus saturées, notamment dans les ciels bleus. Pour les utilisateurs qui préfèrent toujours l'aspect "reflets désaturés", vous pouvez toujours le faire en désactivant la préservation de la chrominance, mais la v6 ajoute une  
    sécurité de teinte pour empêcher le changement de teinte traditionnel qui accompagne cette méthode (où le ciel bleu saturé se dégrade en cyan et rouge saturé en jaune).
    
-   Cet “assainissement” du gamut est le troisième et dernier à être ajouté à darktable, qui dispose désormais d'un pipeline de couleurs entièrement nettoyé, de l'entrée (calibrage des couleurs), en passant par les changements artistiques (balance des couleurs RVB) jusqu'à la sortie (filmique v6). Les utilisateurs peuvent à présent colorer les images en toute sécurité en sachant que les couleurs d'entrée non valides peuvent être récupérées de la manière la moins destructrice possible dès le début du pipeline, et que les couleurs valides ne peuvent pas être poussées hors de la gamme tout le long du pipeline.  
    Remarque : Si les modules sont appliqués après filmique dans le pipeline, ils  
    ne bénéficient pas de ce mappage de gamme et s'appuient sur LittleCMS2 (s'il est activé) à l'étape finale d'exportation, qui ne mappe pas la gamme comme il se doit, et ne l'a probablement jamais fait.
    
-   Reconstruction des hautes lumières  
    Une nouvelle méthode "laplacien guidé" a été ajoutée au module "reconstruction des hautes lumières". Cela utilise un schéma d'ondelettes itératif et à multi échelles pour extraire les détails valides du ou des canaux RVB non écrêtés. Le cas échéant, il utilise ces détails pour guider la reconstruction des canaux écrêtés et enfin il propage les dégradés de couleurs des régions valides voisines à l'aide d’une diffusion de bords consciente des couleurs. Cela limite la diffusion des couleurs à travers les bords (empêchant les feuilles vertes de perdre leur couleur dans la reconstruction du ciel bleu écrêté, par exemple).  
    Un paramètre de bruit permet d'ajouter du bruit Poissonien aux hautes lumières reconstruites, afin de les mélanger dans des images bruitées à haute sensibilité ISO. Cette méthode n'est disponible que pour les capteurs Bayer et ne peut pas être adaptée aux capteurs X-Trans.

-   Présentation de l'espace colorimétrique uniforme de darktable 2022  
    L’espace darktable UCS 22 est un espace colorimétrique uniforme conçu à partir de données expérimentales psycho perceptuelles spécifiquement dans le but de changements de saturation artistique, tels qu'effectués dans le module RVB d'équilibre des couleurs. Il utilise un schéma de luminosité-saturation qui compense l'effet Helmholtz-Kohlraush (qui tient compte de la contribution de la couleur dans la luminosité perçue) et permet un mappage de gamme efficace contre le pipeline RVB à luminosité constante. Cela rendra le contrôle de la saturation dans la balance des couleurs RVB plus efficace.
 
-   Réécriture de l'interface utilisateur  
    L'interface utilisateur a été complètement remaniée pour améliorer l'apparence et la cohérence. Le remplissage, les marges, la couleur, le contraste, l'alignement et les icônes ont été retravaillés.  
    Les sections réductibles dans les modules ont également été repensées afin que leur fonctionnalité soit plus évidente et plus esthétique.  
    De nouvelles sections pliables ont été ajoutées pour éviter d'encombrer l'interface utilisateur dans les modules suivants :
	-   mélangeur de canaux RVB    
	-   exposition
	-   calibrage des couleurs

-   Le module de vignettage a été divisé en deux sections pour plus de clarté.

-   Les sections superflues ont été supprimées du "recadrage" et de la "balance des blancs".

-   La prise en charge de la police IPAPGothic a été ajoutée.

-   Les info-bulles de description des modules ont été retravaillées pour assurer une meilleure mise en page.

-   Enfin, le thème par défaut a été changé en Elegant Grey. La valeur par défaut de darktable est désormais conforme au thème recommandé par l'équipe.
    
-   Modifications des performances et de la prise en charge d'OpenCL  
    Tous les paramètres de performance et OpenCL et les optimisations du “pixelpipe” ont été entièrement revus et mis à jour. De nombreuses nouvelles optimisations ont été ajoutées et les préférences de l'utilisateur ont été simplifiées.  
    Toutes les configurations sont faites dorénavant pour chaque carte graphique, ce qui permet à chaque carte OpenCL d'être réglée séparément.  
    La configuration des performances est désormais appliquée au moment de l'exécution et ne nécessite plus le redémarrage de darktable en cas de modification.  
    Certains modules avaient des facteurs de tuilage incorrects ou trop conservateurs, ce qui rendait darktable inutilement lent (puisque le tuilage était utilisé alors qu’il n'était pas nécessaire)  
    Les modules suivants ont été mis à jour
    

-   dématriçage (X-Trans)
    
-   retouche
    

## Autres changements

-   Glossaire des couleurs  
    L'outil pipette globale (dans la barre latérale gauche de la chambre noire) affiche désormais le nom de la couleur sélectionnée dans l'info-bulle. Cette fonctionnalité a été demandée par plusieurs photographes déficients visuels en couleurs (daltoniens), afin de confirmer la validité perceptuelle de leur montage pour un observateur moyen.  
    Le vocabulaire des couleurs contient 76 entrées : 15 teintes × 5 clartés +  
    neutre (gris). Il ne se déplace pas sur l'axe de chrominance, de sorte que toutes les couleurs sont enregistrées de la même manière, quelle que soit leur couleur.  
    Le vocabulaire contient également des couleurs de peau moyennes pour 3  
    parties du corps (avant-bras, front et joue) de 6 ethnies (chinois, thaï, kurde, mexicain, caucasien, afro-américain). Ces valeurs sont issues des bases de données académiques de cosmétologie et de dermatologie disponibles au  
    moment de la programmation. Elles ne sont valables que pour un illuminant D65 et pour un réglage d'exposition qui ancre le blanc diffus à 92 % de luminance relative.
    
-   Un nouveau paramètre "contraste" a été ajouté aux paramètres de superposition des lignes de guidage, permettant une meilleure visibilité des lignes sur les images.
    
-   Un nouveau module "filtres de collection" a été introduit, conçu pour être plus facile à utiliser que le filtrage du module "collections" actuel.  
    Le nouveau module permet de trier et de filtrer la collection actuelle à l'aide de plusieurs critères. Chaque règle de tri / filtre peut être épinglée, ce qui duplique le contrôle approprié sur la barre d'outils supérieure pour un accès rapide.  
    Les filtres suivants ont été implémentés (plus à venir dans la prochaine version) : étiquettes de couleur, recherche de texte, filtres date-heure, exposition, sensibilité ISO, distance focale, ouverture, format d'image, nom de fichier et extension, regroupement, historique, copie locale, ordre des modules. Des préréglages peuvent être créés et un bouton d'historique permet également de récupérer la configuration précédente.  
    De tout nouveaux widgets de filtres de texte et de couleur ont été implémentés.
    
-   Le module "collections récentes" est désormais intégré au module "collections" sous la forme d'un bouton "historique".
    
-   La fonction de recherche de module de la chambre noire a été améliorée pour correspondre aussi à tous les noms de module définis par l'utilisateur.
    
-   La prise en charge de l'exportation flottante EXR 16 bits (alf) a été ajoutée.
    
-   Toutes les utilisations des dates / heures ont été retravaillées pour mieux prendre en charge les fuseaux horaires et les différents systèmes d'exploitation. La prise en charge des millisecondes a été ajoutée.
    
-   Tous les préréglages du module "égaliseur de tonalité" ont été mis à jour pour utiliser les modes de fusion liés à la scène.
    
-   Le nouveau système de saisie introduit dans la version 3.8 gère désormais les raccourcis clavier simultanés et la réactivité est grandement améliorée.  
    Les paramètres de configuration MIDI sont à présent spécifiés dans les fichiers de ressources de darktable.  
    Les tailles de pas de curseur ont été standardisées et peuvent maintenant être configurées individuellement.  
    Les clics supplémentaires sur les boutons des tablettes graphiques sont désormais traités comme des pressions sur les touches, de sorte qu'ils peuvent être utilisés dans les raccourcis.  
    La prise en charge des déclencheurs de manette de jeu a été ajoutée (les traitant comme des boutons) leur permettant d'être utilisés comme raccourcis.
    
-   Les modificateurs (Ctrl/ Shift/ Ctrl+Shift) peuvent maintenant être utilisés lors du déplacement des curseurs, pour modifier la précision des changements de valeur.
    
-   Lors de l'utilisation des fonctionnalités "copier" et "déplacer" dans la table lumineuse, les derniers répertoires sont mémorisés indépendamment pour chaque opération.
    
-   Dans les modules à onglets, il est maintenant possible scroller pour changer d'onglet.
    
-   Prise en charge améliorée des images monochromes : les vraies images monochromes (comme celles de Leica) et les images des appareils photo dont le filtre matriciel de couleur devant le capteur a été retiré sont désormais traitées de la même manière dans l'interface utilisateur autant que possible.
    
-   Le mode de suggestion des mots-clé (tags) a été amélioré.
    
-   La mise en page de superposition dans la vue d'impression a été améliorée.
    
-   La limite d'itérations de corrections du module "retouche" a été augmentée pour les nouveaux traitements.
    
-   Il est maintenant possible de modifier un seul nœud sur un chemin de pinceau. Vous pouvez modifier la taille, l'opacité et la dureté de chaque nœud indépendamment.
    
-   Un nouveau bouton dans le module "reconstruction des hautes lumières" permet de mieux visualiser les pixels détourés.
    
-   La visualisation de surexposition “raw” affiche désormais l'écrêtage réel du capteur plutôt que d'être ajusté en fonction de la balance des blancs de l'image. Ceci est mieux adapté au flux de travail par défaut (relatif à la scène).
    
-   Les raccourcis peuvent désormais être dirigés vers l'instance de module de traitement actuellement ciblée au lieu de celle actuellement déployée.
    
-   Le contrôle de la vue de la table lumineuse a été amélioré en veillant à ce que les touches haut/bas et gauche/droite aient le comportement attendu.
    
-   Lors de la sélection des couleurs en mode zone, un flou est appliqué. Cela garantit que les mesures du sélecteur de couleurs ne sont pas trop influencées par le bruit de l'image. Ce changement améliore particulièrement la stabilité de la mesure d'exposition relative au noir de filmique.
    
-   Ajout de la prise en charge des informations DNG GainMap EXIF ​​et mets à jour le gain de pixel dans le module “raw-prepare”. Cela donne une meilleure exposition initiale aux images DNG importées.
    

## Corrections de bogues

-   La vérification de la mémoire totale sur Linux est maintenant plus portable.
    
-   Les boutons MIDI avec un statut lumineux sont maintenant correctement mis à jour.
    
-   Les info-bulles des raccourcis d'onglets s'affichent correctement sur les modules à onglets.
    
-   Les désalignements entre les correctifs source et cible dans le module de retouche ont été résolus. Les mouvements « saccadés » sont également améliorés lors de l'ajustement des nœuds ou des segments.
    
-   Le démarrage du mode sélection est amélioré, notamment lorsque aucune image n'est sélectionnée et/ou sous la souris.
    
-   Position de l'icône d'état de copie locale fixée dans la superposition de blocs.
    
-   Positions des poignées de recadrage fixes lors de l'utilisation de mouvements rapides.
    
-   Problèmes de mosaïque RCD OpenCL résolus.
    
-   Assemblage des tuiles pour les capteurs X-Trans
    
-   Mise à jour de la pellicule corrigée si le recadrage est laissé ouvert lors du passage à l'image suivante.
    
-   Le module "collections" est désormais correctement mis à jour lors de l'importation de nouvelles images.
    
-   La gestion de l'impression paysage/portrait a été interrompue en raison d'un changement récent de “CUPS”. Nous comptons maintenant sur le filtre “CUPS” pour la bonne orientation.
    
-   Correction d'une éventuelle corruption de PDF dans les modules d'exportation et d'impression en raison du nombre d'octets écrits en double.
    
-   Correction d'un conflit de parallélisme possible dans le code OpenCL de retouche et de reconstruction des couleurs faisant planter darktable.
    
-   Transformation correcte des points pour le calcul de la rotation en correction de perspective. Cela corrige un problème lorsque l'image est retournée, ce qui rendait impossible l'utilisation du contrôle de rotation.
    
-   Suppression de “RatingPercent” dans les données EXIF ​​car elles ne sont pas normalisées et peuvent perturber la visionneuse d'images Windows.
    
-   Correction du comportement d'étiquetage/rejet lorsque plusieurs images sont sélectionnées :  
    Lorsque vous tentez de rejeter plusieurs images, elles seront désormais définies comme rejetées si l'une d'entre elles n'est pas actuellement rejetée. Elles seront définies comme non rejetés si elles sont toutes actuellement rejetées. Cela permet une gestion plus prévisible des images avec des statuts de rejet incohérent. Des modifications similaires ont également été apportées lors de l'activation/désactivation des étiquettes de couleur.
    
-   Correction de la recherche de préréglage de la balance des blancs dans le module "Balance des blancs".
    
-   Correction d'une possible actualisation manquante de l'éditeur de métadonnées.
    
-   Correction d'un éventuel problème de traduction sous Windows.
    

## Prise en charge des boîtiers, par rapport à 3.8

### Préréglages de la balance des blancs

-   Nikon D4S

-   Panasonic DC-S5
    
-   Sony ILCE-7M4
    

### Soutien suspendu

Aucun échantillon sur raw.pixls.us

-   Canon EOS M2
    
-   Creo/Leaf Aptus 22(LF3779)/Hasselblad H1
    
-   Fujifilm FinePix HS50EXR
    
-   Fujifilm FinePix S6000fd
    
-   Fujifilm FinePix S9600fd
    
-   Fujifilm IS-1
    
-   GoPro FUSION
    
-   Kodak EasyShare Z980
    
-   Leaf Aptus-II 5(LI300059)/Mamiya 645 AFD
    
-   Leaf Credo 60
    
-   Leaf Credo 80
    
-   Leica D-LUX 6
    
-   Minolta DiMAGE 5
    
-   Nikon 1 J4
    
-   Nikon 1 S1
    
-   Nikon Coolpix P7700
    
-   Nikon D1H
    
-   Nikon D2H
    
-   Nikon D3S
    
-   Olympus E-10
    
-   Olympus SP320
    
-   Olympus SP570UZ
    
-   Panasonic DMC-FX150
    
-   Panasonic DMC-G2
    
-   Pentax K200D
    
-   Pentax K2000
    
-   Pentax Q10
    
-   Phase One IQ250
    
-   Samsung GX10
    
-   Samsung GX20
    
-   Samsung NX5
    
-   Samsung NX10
    
-   Samsung NX11
    
-   Samsung NX20
    
-   Samsung NX2000
    
-   Samsung EK-GN120
    
-   Samsung SM-G920F
    
-   Samsung SM-G935F
    
-   Sinar Hy6/ Sinarback eXact
    
-   Sony DSLR-A380
    
-   Sony DSLR-A560
    
-   ST Micro STV680
    

## Traductions

-   tchèque
    
-   Allemand
    
-   espéranto
    
-   Espagnol européen
    
-   finlandais
    
-   Français
    
-   hébreu
    
-   hongrois
    
-   italien
    
-   Japonais
    
-   Néerlandais
    
-   portugais brésilien
    
-   russe
    
-   slovène
    
-   turc
    
-   ukrainien
    
-   Chinois - Chine
