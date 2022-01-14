+++
title = "Qu'est-ce que darktable ?"
reward = false
postDate = false
readingTime = false
author = "Aurélien Pierre"
[menu.main]
  weight = 1
+++

## Qu'est-ce qu'est darktable et qu'est-ce qu'il n'est pas ?

Vous êtes nombreux à arriver ici, déçus par les changements de la politique de Lightroom, attirés par la récente arrivée de darktable sur Windows, ou les deux. On vous accueille à bras ouverts mais certains sujets reviennent souvent, et c'est lassant de répéter. Petit tour d'horizon...

### darktable, gratuit ?

darktable n'est pas gratuit, il est libre. Libre, ça veut dire librement modifiable, librement diffusable, librement utilisable. Il est développé par des gens motivés et passionnés qui prennent sur leur temps libre ou de sommeil pour en faire un outil qui leur plaît. Résumer l'aspect "libre" de darktable à sa gratuité est un peu leur faire insulte, leur travail a une valeur.

### darktable, une communauté.

Corollaire du point précédent, darktable fonctionne sur un mode communautaire d'entraide et de partage de connaissances et de compétences. Vous n'êtes pas client, personne ne vous doit rien, mais ça n'empêche pas des gens sympas de prendre le temps de vous aider. Avant de demander de l'aide ou des fonctionnalités, essayez aussi de vous demandez ce que vous pouvez apporter à a communauté. Ça ne veut pas dire qu'on ne vous aidera pas si vous ne donnez rien en échange, ça veut juste dire que les comportements de consommateur ou d'enfant gâté seront (très) mal accueillis.

### darktable n'est pas Lightroom.

Alors, oui, il y ressemble. Il est aussi développé en partie par d'anciens utilisateurs de Lightroom. Mais il a divergé. Ça veut dire qu'il va falloir faire preuve de souplesse d'esprit et d'adaptabilité. Poster pour dire « Lightroom a cette fonctionnalité géniale, est-ce que ça marche avec darktable ? » n'est pas constructif. La logique interne de darktable est différente, ça veut dire que la plupart des options de Lightroom ont un équivalent approximatif, mais que si vous voulez garder votre workflow Lightroom, restez sous Lightroom.

En particulier la gestion des catalogues. Trop de demandes ici concernent la gestion des mot-clés dans darktable, pour essayer de faire comme Lightroom. TLDR 1 : ça ne marche pas pareil, mais ça marche aussi. Je gère un catalogue de photos de plus de 102000 références, ça ne me prend pas plus de 10s pour retrouver des shoots d'il y a plusieurs années.

On comprend que vous aimeriez garder tous vos réflexes d'utilisateur de Lightroom pour rentabiliser votre expérience et gagner du temps, mais les choix de conception différents qui ont été fait dans darktable sont généralement robustes et garants d'une certaine cohérence au sein du logiciel, donc tout à fait justifiés et justifiables. De plus, darktable se base sur des librairies externes issues de l'écosystème Linux dont l'organisation est forcément différente d'un outil conçu à 100 % en interne.

### RTFM (Read The Fucking Manual)

Corollaire du point précédent, avant de poser des questions, il peut être intéressant de :

1. lire [le manuel](https://darktable.fr/les-manuels/)
2. regarder [les dizaines d'heures de tuto riels vidéo gratuits](https://darktable.fr/liste-des-tutoriels/)
3. profiter des [feuilles de raccourcis et aide-mémoire](https://darktable.fr/carte-de-reference-2/)

Quand j'ai commencé à utiliser darktable, en 2010, il n'y avait pas de tutoriels. J'ai appris la retouche avec des tutoriels Lightroom. Il m'a fallu comprendre ce que Lightroom faisait, puis comment le transposer avec les options de darktable. C'était pénible, mais si j'en ai été capable, vous aussi. Et vous avez la chance d'avoir aujourd'hui une ribambelle de tutoriels spécialement écrits pour darktable, avec des astuces prêtes à l'emploi directement.

Pour migrer sous darktable, il va falloir un peu de courage et de temps. Et il va falloir chercher à comprendre, pas juste à appliquer bêtement.

### darktable n'est pas pour les professionnels ?

Le nouvel engouement pour ce logiciel, développé depuis 2009, conduit bon nombre de « pontes » de la blogosphère à l'essayer et à conclure, après 2 heures d'utilisation, que darktable n'est pas mûr pour un usage professionnel. En ce moment, les experts du web ne se donnent même plus la peine d'être compétents avant de faire des tutoriels, ils font des tutoriels en fonction de la demande, de la mode ou de l'orientation du vent. Moi j'avais 5 ou 6 ans d'expérience avec darktable quand j'ai sorti mon premier tutoriel, mais chacun son éthique de travail. Et puis vous savez qu'il y a deux sortes de photographes : ceux qui sont derrière leur appareil photo, et ceux qui sont sur Internet (à bon entendeur...).

Le fait est que la valeur perçue d'un logiciel « gratuit » (voir plus haut) est faible. De plus, l'interface graphique de darktable est moins léchée que ses équivalents cosmétiques propriétaires. Ça ne veut pas dire que darktable n'est pas prêt pour un usage professionnel. Voir le travail du [Luc Viatour](https://lucnix.be/) ou [le mien](https://photo.aurelienpierre.com/).

D'abord, tous les usages pro ne se valent pas. Le photographe de mariage n'est pas le reporter aux J.O, l'un remet ses photos retouchées plusieurs semaines après, l'autre transmet ses photos en temps réel à la salle de presse pour mise à jour immédiate des flux d'actualité. Il y a le professionnel qui retouche ses photos au Starbucks sur son MacBook pour poster sur les réseaux sociaux. Il y a le professionnel qui retouche dans son studio sur un écran étalonné pour faire de l'impression. Il y a le professionnel qui fait des tirages d'art en chambre noire. Il y a le photographe commercial de quartier qui surfe sur les modes en utilisant des presets et des filtres. Usages différents, outils différents. « LE » professionnel, ça n'existe pas. Lequel ?

darktable possède de nombreuses options inexistantes dans Lightroom, comme les masques paramétriques, l'accentuation de la netteté par décomposition en ondelettes ou le module fluidité. Je travaille moi-même à développer des modules de défloutage et de débruitage au niveau de ceux de DXO, en intégrant des méthodes de traitement sorties de la recherche de ces 5 dernières années.

darktable possède aussi des outils fondamentaux pour le professionnel, comme la gestion des profils de couleurs de bout en bout avec softproofing (pour ceux qui étalonnent leur appareil photo, leur écran et leur imprimante), la gestion des formats de fichier 8, 16 et 32 bits, un mode de retouche entièrement non destructif, une rétro-compatibilité complète, et l'accélération matérielle (calculs en utilisant la carte graphique). Il est possible de synchroniser automatiquement vos photos non-locales (si elles sont hébergées sur un NAS, un cloud ou un disque dur externe), d'exporter des styles, préréglages et piles de retouche, etc. Il permet aussi d'appliquer des styles ou préréglages automatiques et conditionnels (par exemple, spécifiques à un boîtier ou à un objectif).

### darktable, c'est vous, nous, toi.

darktable est un projet vivant et actif. Vous pouvez :

1. [contacter ses développeurs directement,](http://www.darktable.org/contact/)
2. [soumettre des rapports de bugs et des demandes de fonctionnalités ,](https://redmine.darktable.org/issues?set_filter=1)
3. [suivre son développement et / ou y participer ,](https://github.com/darktable-org/darktable)
4. [envoyer des échantillons de RAW si votre boîtier n'est pas reconnu ,](https://raw.pixls.us/)
5. poser des questions (sur le forum).

Ça veut dire que vous pouvez l'améliorer, suggérer des changements, participer, tester les futures versions, etc. Vous tirerez profit de ce logiciel seulement si vous ne restez pas un consommateur passif dans l'attente que d'autres règlent vos problèmes. Ça n'est pas le même fonctionnement qu'un logiciel commercial. Aussi, si vous avez besoin d'une assistance réactive et d'un vrai service client, restez avec des logiciels commerciaux (encore que le SAV d'Adobe ne soit pas nécessairement plus réactif).

Oui, darktable est (parfois) moins intuitif que Lightroom, mais il ne fait rien dans votre dos.

Oui, certaines options ne sont pas toujours très claires, mais vous avez le contrôle complet du logiciel.

Oui, les derniers boîtiers ne sont pas supportés immédiatement, mais sous Lightroom non plus.

Oui, certaines options préprogrammées dans un seul module Lightroom sont séparées dans darktable, donc l'utilisateur est moins guidé, mais il a plus de choix.

### Ce que darktable fait

Il peut y avoir des confusions sur ce que peut faire ou non darktable. darktable est un logiciel de correction et d'exportation de données brutes de capteurs en images regardables par un être humain.

Pensez aux données brutes comme à un négatif numérique, et pensez à darktable comme à une chambre noire numérique. Il vous permet d'ajuster votre image (exposition, couleur, contraste) mais aussi de corriger vos fichiers (netteté, bruit, déformation d'objectif ou de perspective). Il est donc le pendant virtuel du développement argentique.

darktable peut aussi corriger des images qui sont déjà dans des formats lisible par l'humain (jpg, tif, png, etc.). Seuls les modules liés au dématriçage des capteurs disparaissent alors.

darktable est aussi un catalogueur, et vous permet de maintenir vos collections d'images en utilisant des mots-clés hiérarchiques (ex : animaux | cheval, animaux | otarie, otarie et cheval sont des sous-catégories de animaux), et de faire des recherches conditionnelles (ex : chercher les fichier RAW pris le 3 décembre, non retouchés, dont la focale est 50 mm et l'ISO inférieur à 1600 et ne contiennent pas le mot-clé "soleil"). Il permet de déplacer et supprimer des images (et on déconseille formellement les suppressions, renommage, déplacement d'images en passant par le navigateur de fichiers du système d'exploitation, car ces images sont inscrites dans la base de données de darktable, et le système d'exploitation ne peut pas l'informer des modifications effectuées).

### Ce que darktable ne fait pas

darktable n'est pas un logiciel de retouche au niveau du pixel. C'est à dire qu'il ne permet pas de faire des détourages, incrustations, remplacement de portions de l'image, effets spéciaux (ombres projetées notamment), déformations non géométriques (avec des bémols), de gérer des calques, ni quoi que ce soit apparenté à la peinture ou au dessin ou à la manipulation de texte etc. Pour cela, utilisez Gimp. Ce que darktable sait faire s'apparente toujours plus ou moins à du filtrage, où l'on traite toute l'image ou toute une région.

Certains modules récents ou en cours de développement (comme fluidité, ou retouche) vont faire mentir cette règle générale et introduisent des fonctions de retouche au niveau du pixel, mais ils sont assez peu pratiques à l'emploi et relèvent de l'exception.

Ce n'est pas non plus un logiciel de publication assistée par ordinateur. Il ne permet pas non plus de créer des panoramas par alignement d'images (utilisez Hugin). Il permet certaines fusions HDR basiques (mais préférez Enfuse ou Luminance HDR pour plus d'options) et sait comprimer des plages dynamiques HDR de différentes façons, mais il n'est pas un logiciel de HDR.

### Comprendre la logique de darktable

darktable a été lancé par Johannes Hannika, aujourd'hui docteur en informatique fondamentale, spécialiste du traitement d'image. Les modules scientifiquement les plus avancés lui sont dus. Il a été rejoint par plus de 120 développeurs, dont beaucoup sont des scientifiques et certains des chercheurs. Il faut comprendre que, à l'intérieur, darktable n'est qu'une grosse machine à calculer qui réalise des opérations complexes sur des valeurs de pixels. En gros, sous le capot, c'est juste des maths.

L'organisation des modules porte la trace évidente de ces mathématiques sous-jacentes : les paramètres gardent leur nom scientifique, les modules portent le nom des algorithmes utilisés (le flou bilatéral n'est pas rebaptisé flou de surface comme dans Photoshop, les modules de débruitage disent quels algorithmes ils utilisent : ondelettes, moyenne non-locales, etc). Par rapport à d'autres logiciels, vous allez trouver des noms barbares, c'est un choix, qui peut dérouter, mais qui prend le parti de ne pas prendre l'utilisateur pour un idiot. Si vous cherchez sur Google la signification de ces noms, vous allez pouvoir vous faire une idée de ce que ces modules réalisent réellement, et peut-être comprendre leurs limites aussi.

### Vous avez un problème avec darktable ?

Commencez par vous dire une chose : pour la plupart des gens ici, darktable marche parfaitement. En cas de problème, avant d'incriminer le logiciel, sa maturité ou son ergonomie, commencez par vous demander si vous n'avez pas compris quelque chose de travers ou si vous n'êtes pas en train d'essayer de réaliser une opération interdite. Si vous essayez systématiquement de le faire fonctionner comme Lightroom, vous allez au devant de déconvenues. darktable a sa propre logique, comme tout outil logiciel, et il faut s'y plier.

Mais les bugs arrivent aussi. Pour que nous puissions vous aider, voire proposer des corrections du code, nous avons besoin de reproduire ces bugs pour identifier leur origine. Quand vous postez une demande d'aide, essayez de fournir un maximum de détails sur les circonstances du bug supposé : système d'exploitation, version de darktable, série de manipulations qui causent le bug, comportement attendu et comportement obtenu.

Par expérience, la plupart des « bugs » n'en sont pas, mais sont simplement de mauvaises utilisations ou des tentatives de reproduction de paradigmes Lightroom.

**Aurélien Pierre – décembre 2017**
