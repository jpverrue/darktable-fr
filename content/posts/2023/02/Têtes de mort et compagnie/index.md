
Ça nous est tous arrivés un jour.

Une ou plusieurs vilaines "tête de mort" sont apparues au milieu des vignettes de nos photos sur la table lumineuse. Ou, plus sournois, tout a l'air correct, toutes les vignettes sont bien affichées, mais quand vous cliquez sur l'une d'elle pour l'ouvrir en table lumineuse, vous obtenez le message : `image « mon_fichier.raw » non disponible actuellement` Ces deux alertes n'ont qu'une même origine : il y a discordance entre le nom ou l'emplacement du ou des fichier(s) et la connaissance qu'en a darktable.

Explication : lors de l'importation et ensuite lors du catalogage ou du post-traitement, darktable enregistre dans sa base de donnée une quantité importante d'informations pour chacune de nos photos. Citons rapidement :
- les principales données de prise de vue,
- les mots clés que nous créons pour le catalogage,
- les méta-données : titre, description, auteur, diffuseur, droits, etc,
- les scores et labels de couleurs,
- divers horodatages,
- la géolocalisation,
- toutes les informations relatives au traitement à proprement parler de chaque image, y compris l'historique du traitement, les masques, l'ordre des modules,
- et en premier lieu, ce qui nous intéresse plus particulièrement ici : le nom du fichier et le chemin d'accès à celui-ci.

Il faut bien comprendre que darktable s'appuie uniquement sur sa base de donnée pour gérer nos photos. Pourquoi ? Pour deux raisons principales :

- La performance. Il est beaucoup plus rapide d'interroger la base de donnée que de lire ou écrire systématiquement un ou des fichiers sidecar (les fichiers xmp).
- La sécurité. darktable n'écrit et n'écrira jamais quoi que ce soit dans nos fichiers raw. En effet, les formats de ceux-ci ne sont pas publics. Il est donc impossible de savoir si une suppression, une modification ou un ajout, ne vont pas tout casser.

Puisque darktable ne connait que ce qui est écrit dans la base de donnée, la moindre intervention extérieure - renommage ou déplacement d'un ou de plusieurs fichiers - aura comme conséquence que darktable sera dans l'incapacité de retrouver "ses petits". Il affichera alors des têtes de mort ou le message mentionné plus haut.
Pourquoi pas toujours une tête de mort, ou toujours uniquement le message ?
L'explication est liée à la gestion du cache des vignettes. Dans ce dernier, darktable stocke les vignettes de chaque photo par défaut en trois tailles. Si parmi l'une de ces tailles darktable trouve le fichier permettant d'afficher la vignette, cette dernière sera affichée, même si le fichier raw n'est pas trouvé. Nous ne serons informés de son absence que lorsque nous cliquerons dessus pour le traiter en chambre noire. Par contre, s'il n'y a pas de vignette, et qu'il est impossible d'en fabriquer une puisque le fichier raw est introuvable, darktable affichera la tête de mort.

Pour rattraper tout ça, il faut remettre les choses en place ; soit en défaisant ce qui a été fait par erreur dans l'arborescence des fichiers, soit en faisant prendre en compte par darktable les nouveaux emplacements ou les nouveaux noms de nos fichiers raw.

Défaire ce qui a été fait par erreur dans le stockage des fichiers et du ressort des outils système. Je n'en parlerai pas plus.
Faire prendre en compte des modifications par darktable peut se faire de deux façons :

- Si ce sont uniquement des chemins d'accès qui ont été modifiés, en plus du message ou des têtes de mort, le ou les chemins introuvables apparaitront barrés dans la liste (par pellicule ou par dossier) du module collections. En faisant un clic droit sur un chemin barré, il sera alors possible de rechercher le bon chemin dans l'arborescence et de l'enregistrer dans la base de donnée.
- Si les noms de fichiers ont été modifiés, il faudra dans ce cas enlever et réimporter les fichiers dans darktable. Enlever se fait avec le module "images sélectionnées" et importer avec le module... importer !

Mais comment identifier toutes les photos concernées ? Il n'existe pas de script Lua pour le faire, ni de script de maintenance fourni par l'équipe de développement. Comme je suis sympa, si, si ! Je vous en propose un ci-dessous.
```
#! /bin/bash  
#  
# Usage : $0 [<LibPath>]  
# If not <LibPath> provided, use $Default LibPath below  
  
LibPath=${1:-"/home/jpv/.config/darktable-prod/library.db"}  
  
sqlite3 -separator '/' ${LibPath} \  
'SELECT film_rolls.folder, images.filename  
FROM images  
INNER JOIN film_rolls  
ON film_rolls.id = images.film_id;' |  
while read FilePath  
do  
[ -e "${FilePath}" ] || echo "${FilePath}"  
done
```
Il vous suffit de le copier/coller sur votre système et éventuellement, d'ajuster le chemin par défaut.

Quand vous le lancez, le script va lire l'intégralité de la base de donnée et vérifier, pour chaque fichier inscrit dans celle-ci, s'il existe dans votre ordinateur.
Les fichiers introuvables seront listés avec le chemin que darktable connait. Avec cette liste, il devient alors plus facile de remettre de l'ordre dans votre stockage de photo.

Fini les têtes de mort ! 
