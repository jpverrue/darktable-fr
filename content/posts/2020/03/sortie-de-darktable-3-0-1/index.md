---
title: "Sortie de darktable 3.0.1"
date: "2020-03-09"
categories: 
  - "actualites"
tags: 
  - "darktable"
  - "featured"
  - "news"
coverImage: "darktable3.jpg"
---

La première mise à jour de maintenance de darktable 3.0, numérotée 3.0.1 a été publiée aujourd'hui par Pascal Obry. [Lire les notes de version officielles (en anglais)](https://github.com/darktable-org/darktable/releases/tag/release-3.0.1).

En deux mois et demi, depuis la parution de darktable 3.0.0 à Noël, 680 commits ont été versés par 28 contributeurs, soit 23 311 fichiers édités, 23 311 lignes de code ajoutées, et 12 027 lignes de code retirées. (Bande de furieux)

## Télécharger la mise à jour

Les fichiers exécutables pour Windows et pour MacOS de darktable 3.0.1 peuvent être téléchargés depuis [Github,](https://github.com/darktable-org/darktable/releases/tag/release-3.0.1) ou ci-dessous :

- [Windows (.exe)](https://github.com/darktable-org/darktable/releases/download/release-3.0.1/darktable-3.0.1-win64.exe)
- [MacOS (.dmg)](https://github.com/darktable-org/darktable/releases/download/release-3.0.1/darktable-3.0.1.2.dmg)

Pour les utilisateurs de Linux, les paquets pré-compilés pour votre distribution devraient arriver prochainement dans vos dépôts logiciels (_rappel : l'équipe darktable n'a aucun contrôle sur ces dépôts, contactez directement leur mainteneur ou le support de votre distribution Linux pour des informations sur les délais de mise à jour_).

Le [dépôt OBS de Darix](https://software.opensuse.org/download.html?project=graphics:darktable&package=darktable) (Open Build Service) permet d'obtenir des paquets pour les distributions Debian, Ubuntu, OpenSuse et Fedora, si vos dépôts officiels tardent à être mis à jour.

En attendant les paquets pré-compilés, ou pour obtenir un logiciel optimisé pour votre ordinateur, vous pouvez [compiler darktable](https://darktable.fr/2020/02/travailler-sur-une-version-compilee-de-darktable/) vous-même (à vos risques et périls) depuis le code source. Après la commande classique :

$ git clone https://github.com/darktable-org/darktable.git
$ cd darktable

qui permet de récupérer tout le répertoire de darktable, lancez :

$ git fetch --all --tags
$ git checkout tags/release-3.0.1

pour vous placer sur la version 3.0.1, avant l'habituel :

$ ./build.sh --build-type Release --sudo --install

qui compilera et installera le logiciel. [Lire attentivement les détails et mises en garde sur la compilation manuelle](https://darktable.fr/2020/02/travailler-sur-une-version-compilee-de-darktable/) avant de se lancer.

## Annonce importante

**Un sondage sur les utilisateurs de darktable est en cours, pour la première fois depuis l'histoire du projet.** Son objectif est de mieux connaître la démographie des utilisateurs, mais aussi comment ils utilisent le logiciel et quelles sont leurs attentes, afin de prendre des décisions de conception plus éclairées. Il est très important que vous participiez et que vous le relayez auprès de vos contacts et réseaux de photographes.

Vous le trouverez à cette adresse : [http://www.poll-maker.com/QSDGDNJ](http://www.poll-maker.com/QSDGDNJ). Le sondage est un langue anglaise car international, si vous avez des difficultés avec cette langue, [faites vous connaître sur le forum](https://forums.darktable.fr/) pour obtenir de l'aide.

## Nouveautés de la version 3.0.1

- Un nouveau **mode d'évaluation des couleurs** est introduit dans la chambre noire. Il est conçu pour assurer une perception correcte des couleurs, minimisant les illusions d'optique liées au contraste avec l'interface du logiciel, basée sur les conditions d'épreuvage des couleurs recommandées par l'ICC (ISO 12646:2008). Le bouton d'activation se trouve à gauche de la prévisualisation de sur-exposition raw (icône en forme d'ampoule).
- Les **panneaux latéraux (gauche et droit) peuvent désormais être redimensionnés** en largeur directement à la souris (par cliquer-déplacé sur les bords). Les largeurs sont mises en mémoire individuellement pour chaque « vue » (table lumineuse, chambre noire, etc.).
- Un **mode de prévisualisation de la netteté** (_focus-peaking)_ a été ajouté sur la table lumineuse et la chambre noire. Les zones de netteté prononcée, intermédiaire et moyenne sont matérialisées respectivement en jaune, vert et bleu. Il s'agit de statistiques calculées sur les gradients dans l'image (donc d'une détection de contraste local). La prévisualition est activée avec le raccourci clavier Ctrl+Maj+F.
- **Le débruitage par profil, en mode ondelettes, possède un nouveau mode Y0U0V0,** qui découple la chrominance et la luminance pour un débruitage beaucoup plus fin de ces deux paramètres, dans la même instance.

## Changements et nouvelles fonctionnalités

- Ajout d'un **écran de chargement** de la chambre noire,
- Réduction de la taille des **étiquettes de modules,** pour une meilleur cohérence visuelle de l'interface,
- Ajout d'un petit rectangle autour de l'affichage de l'angle, pour l'**outil de redressement de l'horizon**, pour une meilleure lecture,
- **Mémorise la disposition des vues** (sélection d'images, épreuvage des couleurs), pour conserver la disposition des bandeaux et des barres latérales à la prochaine ouverture,
- **Ajout de bulles contextuelles** sur les modules, dans l'historique,
- Ajoute la possibilité de **ré-appliquer le dernier mot clé** sur une image via un raccourci (par défaut : Alt+T),
- Ajout des **espaces de couleur HDR à large gamut** P3 et Rec2020 munis des courbes de mappage des tonalités HLG et PQ,
- Ajout de **bordures personnalisés** dans le module bordures,
- Ajout du support des **variables standard** (masques $EXIF_xxx notamment) dans le module filigrane,
- Permission à différents modules d'**utiliser les mêmes raccourcis clavier**, suivant la vue. Ceci permet notamment à la bande de film d'utiliser les même raccourcis d'attribution d'étoiles que dans la table lumineuse,
- Ajoute une **mise à l'échelle logarithmique pour les curseurs L, R, V, B, C, g des modes de fusion paramétriques**. Ceci donne un meilleur contrôle des faibles valeurs RGB,
- Définition de nombreux raccourcis clavier pour les curseurs des modules, pour donner plus de contrôle au clavier,
- Ajout de la **copie, du remplacement et de la fusion des méta-données** entre images,
- Meilleure visibilité de la partie zoomée de l'image dans le widget de navigation,
- Retourne au **mode lisse** par défaut (tel qu'il était dans 2.6) dans le **module zones de couleurs**,
- Possibilité de **redimensionner le module de collections** avec Ctrl+Défilement,
- Ajout du support des **LUT compressées** avec Gmic (.gmz) dans le module LUT 3D,
- Utilisation d'un ordre des dossiers plus naturel dans le module de collections, **les derniers dossier utilisés sont listés en premier,**
- Modification de la **recherche de module** en chambre noire, à présent **insensible à la casse**.

## Corrections de bugs

- Toutes les LUT valides sont affichées dans le sélecteur de fichier,
- La redressement dans le module recadrer et pivoter, lorsque le module orientation est actif, a été corrigé,
- Les masques elliptiques et gradués peuvent maintenant être manipulés quand les modules orientation ou recadrer et pivoter sont actifs,
- Corrige l'édition des styles dans la table lumineuse. La liste des modules était vide à cause d'une erreur dans la commande SQL,
- Rend le clic sur l'icône de groupe plus facile. La zone active autour de l'icône était trop petite,
- Assure que maximum 64 points sont ajoutés dans le module de suppression des taches, et affiche un message si la limite est atteinte,
- Temporise l'affichage de l'histogramme jusqu'à ce que l'image soit complètement chargée, et l'histogramme correspondant prêt,
- Actualise correctement les XMP lorsque les actions annuler/refaire sont exécutées,
- Règle des incohérences entre les codes OpenCL et SEE du filtre laplacien local,
- Meilleure performance du filtre guidé de l'égaliseur de ton,
- Assure que les fichiers exportés respectent les tailles spécifiées (sans approximation à ± 2 pixel),
- Règle les problèmes d'opacité des pinceaux pour le masque dessiné,
- Meilleure performance sur le calcul du ratio d'aspect,
- Règle l'import des doublons sur Windows,
- Meilleure visibilité de la grille de la courbe des tonalités, avec le thème gris,
- Meilleure visibilité de l'affichage à l'écran des touches saisies au clavier,
- Meilleure performance et précision de l'histogramme en forme d'onde,
- Plusieurs corrections des icônes haute résolution,
- Les exporteurs vers Facebook, Google Photo et Flickr sont supprimés et plus supportés par l'équipe darktable, car les API fournies par ces services changent trop souvent et demandent trop de maintenance pour les suivre. Les développeurs tiers sont invités à créer des scripts Lua pour gérer ces plateformes, et à s'arranger pour suivre les changements d'API,
- Corrige le flou des filigranes utilisés en rotation,
- Corrige l'apostrophe dans les métadonnées,
- Corrige l'affichage de la timeline qui comptait 61 minutes par heure,
- Supprime des presets faux dans le module courbes RGB,
- Corrige des recalculs du pipe intempestifs.

## Pré-réglages de balance des blancs

- Canon EOS 77D
- Canon EOS 9000D
- Nikon COOLPIX P1000
- Panasonic DC-GH5

## Profils de bruit

- Canon EOS-1Ds
- Fujifilm X-H1
- Fujifilm X-T30
- Olympus E-510
- Panasonic DC-GH5
- Sony ILCE-6600
- Sony ILCE-7RM4
- Sony ILCE-9

## Et après ?

Le manuel utilisateur est en cours de portage par Mica vers Markdown via Dita. Ce format de rédaction permettra une édition beaucoup plus facile et rapide que l'actuel XML Saxon, y compris par des personnels non techniques. Les fichiers Markdown permettront en outre d'être édités directement depuis le site web de Github, en mode presque WYSIWYG, et d'être intégrés sur le site web du projet.

La table lumineuse est en cours de réécriture par Aldric Renaudin (cocorico) pour utiliser des widgets Gtk natifs, beaucoup plus rapides que la version actuelle (que Pascal Obry avait déjà bien accélérée).

Le ré-ordonnancement du pipeline a été ré-écrit complètement par Pascal Obry pour régler les bugs actuels, mais aussi autoriser des pré-réglages de pipeline, et permettre de réinitialiser le pipeline à l'ordre par défaut dans darktable 2.6 ou 3.0. Si la modification est suffisamment stable, elle sortira dans 3.0.2.

Un système de tests unitaires a été ajouté par Martin Burri et déclenché à la compilation, ce qui devrait aider à assurer la qualité du code et à repérer les régressions. Des scripts de tests d'intégration sont aussi en cours de développement, notamment pour assurer la cohérence du traitement d'image entre le code OpenCL (GPU) et C pur (CPU).

Philippe Weyland et Jens Hanno Schwalm travaillent continuellement pour améliorer la gestion des tags, des méta-données, les accès SQL à la base de données, à l'historique et l'écriture des XMP. C'est un travail minutieux de dépoussiérage d'une partie un peu négligée du code.

Heiko Bauke est en cours d'analyse du code et de nettoyage des morceaux inutiles, redondants voire potentiellement dangereux. Encore un travail de fourmi.

Un module de traitement des film négatifs scannés (couleur ou N&B), [Négadocteur,](https://forums.darktable.fr/showthread.php?tid=4615) a été ajouté par moi-même, basé sur le modèle densitométrique Kodak Cineon qui avait été développé pour traiter des films numérisés au cinéma, dans les années 1990. En plus de l'inversion du film, il effectue une simulation d'impression papier et une correction de balance des blancs et des virages de teintes parasites. Il accélère significativement le post-traitement des négatifs dans darktable, en combinant en un module ce qui nécessitait plusieurs étapes de bidouillages, et en proposant 7 pipettes qui permettent d'aller extraire les réglages directement des mesures dans l'image. L'essentiel du code a été écrit dans un bar avec Jean-Paul Gauche, entre deux chopines, mais, promis, j'ai vérifié les calculs soigneusement par la suite, à alcoolémie nulle. La version OpenCL est fournie.

Rawfiner a trouvé un problème dans le filtre guidé, utilisé dans les raffinements de masques et dans l'égaliseur de ton, qui mène à un floutage plus marqué des basses lumières que des hautes, ce qui rend le masquage de l'égaliseur de ton difficile à prévoir. Un gros projet en cours est de trouver une formulation théorique du filtre guidé invariante et indépendante de l'exposition du pixel, ce qui aura probablement des répercussions en dehors de darktable, pour de nombreux logiciels. Il continue aussi d'améliorer la gestion de bruit et des profils.

Quant à moi, je suis aux prises avec diverses tentatives d'optimisation bas niveau du code de traitement des pixels, pour tirer parti des ressources offertes par les processeurs récents et accélérer tout ça. J'ai aussi un projet de recherche et développement en cours, sur l'adaptation chromatique, visant à compenser le contraste et la température couleur de l'écran en fonction de l'éclairage ambiant de la pièce dans laquelle vous faites vos retouches, de manière à uniformiser l'affichage en fonction de l'éclairage.

Voilà, vous savez tout. Un grand merci, comme d'habitude, à Pascal Obry qui abat une somme de travail considérable, étant l'auteur d'environ un tiers des commits depuis darktable 3.0, testeur et intégrateur de la plupart des changements. N'oubliez pas de [nous soutenir.](https://liberapay.com/darktable.fr/)
