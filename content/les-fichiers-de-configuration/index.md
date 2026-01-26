+++
title = "Les fichiers de configuration"
date = "2024-09-02"
reward = false
postDate = false
readingTime = false
[menu.main]
weight = 5
parent = "documentation"
+++

> Ce document est également disponible en format [PDF](https://darktable.fr/les-fichiers-de-configuration/les-fichiers-de-configuration-de-darktable.pdf)

---

# Référence des fichiers de configuration et de fonctionnement de Darktable

## À propos

Ce document décrit les fichiers et dossiers conformes à la version 5.4 de Darktable. 

- Les précédentes éditions mentionnaient la conformité avec les différentes versions de
  Darktable. Pour une lecture plus fluide, ces informations ont été supprimées, car les
  modifications intervenues ne remettent pas fondamentalement en question le contenu
  de ce document qui reste tout à fait utilisable pour l'ensemble des versions depuis la 3.8.
- La version 5.4 ouvre la possibilité de créer de multiples espaces de travail dans Darktable.
  Cela amène la création de fichiers propres à chaque espace de travail. Les fichiers existants
  sont conservés et dupliqués pour le nouvel espace de travail. La copie est renommée en gardant
  le nom original augmenté du nom de l’espace de travail.

## Préambule

Indépendamment de vos propres fichiers d’images, Darktable utilise un certain nombre de fichiers pour
fonctionner. Ces fichiers sont de plusieurs ordres.

- On distinguera d’abord les fichiers qui sont propres à chaque utilisateur de Darktable de ceux qui sont
  communs à tous les utilisateurs. Ces derniers sont fournis systématiquement avec chaque nouvelle version
  de Darktable. Les modifications que vous feriez sur ces derniers seront donc perdues lors de chaque mise
  à jour. Je les référencerai comme fichier <u>utilisateur</u> ou <u>système</u>.
- On distinguera ensuite les fichiers de configuration qui régissent le fonctionnement du logiciel, des
  fichiers de traitement qui matérialisent toutes les modifications que vous faites sur vos photos. En effet,
  Darktable ne modifie JAMAIS vos fichiers d’images. Toutes vos modifications sont enregistrées dans ces
  fichiers de traitement. Je les référencerai respectivement comme fichier de <u>configuration</u>, ou de
  <u>développement</u>.
- On distinguera enfin les fichiers de type “ texte ” qui n’ont besoin que d’un éditeur de texte pour être consultés
  ou modifiés, des fichiers de type “ binaire ” qui nécessitent des outils spécialisés pour être consultés ou
  modifiés. Je les référencerai également comme <u>texte</u> ou <u>binaire</u>.

## Emplacement des fichiers.

Tous ces fichiers sont stockés à plusieurs endroits sur votre machine. Un endroit destiné
essentiellement à vos propres fichiers que j’appellerai bien sûr le dossier **Utilisateur** ; un deuxième
qui contient les vignettes de vos photos ainsi que quelques données d’exécution de Darktable que j’appellerai
dossier **Cache** ; un troisième qui sera utilisé pour les enregistrements des journaux de débogage que j’appellerai
dossier **Temporaire** ; un quatrième destiné aux fichiers système que j’appellerai dossier **Système** cela va de
soi ! Et enfin, tous les dossiers qui contiennent des images que vous avez importées. Ces dossiers sont situés
différemment selon le système que vous utilisez. Voici ces lieux décrits système par système. Vous pouvez aussi
définir vous-même l’emplacement de ces dossiers grâce aux options de lancement de Darktable.

### Sous Linux.

Remarque préliminaire : la variable `$HOME` contient le chemin absolu (à partir de la racine du système),
du dossier personnel de l'utilisateur. C'est-à-dire, en général, `/home/<login de l'utilisateur>`. Cette
variable est couramment utilisée dans les scripts et en mode ligne de commande. Elle n’est pas universellement
utilisable dans les gestionnaires de fichiers graphiques ; par exemple, Nautilus ne la reconnaît pas alors
que Dolphin la reconnaît. Je l’ai employée dans cette description, car c’est une façon assez élégante de
décrire cette partie du chemin d’accès à des fichiers. Nota bene : le caractère `~` remplace avantageusement
la variable `$HOME` en saisie ; de plus, il est utilisable partout.

- Dossier Utilisateur :
  `$HOME/.config/darktable` par défaut. Cet emplacement peut être modifié avec l’option de lancement `--configdir`.

- Dossier Cache :
  `$HOME/.cache/darktable` par défaut. Cet emplacement peut être modifié avec l’option de lancement `--cachedir`.

- Dossier Temporaire :
  `/tmp` par défaut. Cet emplacement peut être modifié avec l’option de lancement `--tmpdir`. L'emplacement des
  journaux de débogage peut aussi être modifié avec l'option `--dumpdir`.

- Dossier Système :
  `/usr/share/darktable` par défaut. Cet emplacement peut être modifié avec l’option de lancement `--datadir`.
  Si vous compilez vous-même la version la plus récente de Darktable, le dossier système se trouve par
  défaut dans `/opt`.

Le dossier `.config` est un dossier caché (le '.' au début du nom). Pour y accéder, il suffit de taper
son nom. Voici les moyens pour le visualiser :

- Dans un terminal : `ls -a`
- Avec les outils graphiques, cela dépend de l'outil, mais le raccourci `Ctrl+h` permet le plus souvent de
  le voir.

### Sous MacOS.

Remarque préliminaire : MacOS et Linux partagent le même ancêtre commun, UNIX. La remarque préliminaire
concernant la variable `$HOME`, héritée d'UNIX, s'applique donc également ici.

- Dossier Utilisateur :
  `$HOME/.config/darktable` par défaut. Cet emplacement peut être modifié avec l’option de lancement `--configdir`.

- Dossier Cache :
  `$HOME/.cache/darktable` par défaut. Cet emplacement peut être modifié avec l’option de lancement `--cachedir`.

- Dossier Temporaire :
  `/private/var/folders/h_/<hashcode>/T` par défaut. Cet emplacement peut être modifié avec l’option de
  lancement `--tmpdir`. L'emplacement des journaux de débogage peut aussi être modifié avec l'option `--dumpdir`.

- Dossier Système :
  `/Applications/darktable.app/Contents/Resources/share/darktable` par défaut. Cet emplacement peut être
  modifié avec l’option de lancement `–-datadir`.

Le dossier `.config` est un dossier caché (le '.' au début du nom). Pour y accéder, il y a plusieurs
méthodes selon qu'on utilise un terminal ou le “ Finder ”. Plusieurs de ces méthodes sont décrites dans
ce [fil de discussion](https://forums.darktable.fr/showthread.php?tid=1972)

### Sous Windows.

- Dossier Utilisateur :
  `%LOCALAPPDATA%\darktable` par défaut. Cet emplacement peut être modifié avec l’option de lancement `--configdir`

- Dossier Cache :
  L'emplacement par défaut est (était ? Changement de version de Windows ?)
  `%LOCALAPPDATA%\Microsoft\Windows\Temporary Internet Files\darktable\` Je l'ai vu aussi ici (version
  de Windows ?) : `%LOCALAPPDATA%\Microsoft\Windows\NetCache\darktable\`
  Cet emplacement peut être modifié avec l’option de lancement `--cachedir`.

- Dossier Temporaire :
  `%LOCALAPPDATA%\Temp\` par défaut.
  Sous Windows, le dossier dans lequel Darktable écrira les fichier journaux est différent du dossier temporaire.
  Précédemment ces fichiers étaient enregistrés dans les sous-dossiers système du profil de l'utilisateur, ainsi
  que dans un répertoire caché (il était donc impossible de cliquer dessus dans l'explorateur de fichiers
  avec les paramètres système par défaut). C'est emplacement a été modifié en `%USERPROFILE%\Documents\Darktable`.<BR/>
  Cet emplacement peut être modifié avec l’option de lancement `--tempdir`.
  Il peut aussi être modifié avec l'option de lancement `--dumpdir`.

- Dossier Système :
  `C:\Program Files\darktable\share\darktable\` par défaut. Cet emplacement peut être modifié avec l’option de
  lancement `–-datadir`.

La variable `%LOCALAPPDATA%` correspond au chemin des fichiers de configuration des applications propres à chaque
utilisateur. C'est-à-dire, en général, `C:\Users\<login de l'utilisateur>\AppData\Local\`.

Comme pour Linux et MacOS, j’ai utilisé la notation lisible dans une fenêtre de commande (terminal ou cmd).
Donc `“Users”` et `“Program Files”`. Ces noms apparaîtront cependant sous une forme francisée dans l’explorateur
de fichier : “ Utilisateurs ” et “ Programmes ”. Le dossier `AppData` est un dossier caché. Pour l'afficher,
passer par les options de l'explorateur : organiser → options des dossiers et de recherche → affichage → afficher
les fichiers, dossiers et lecteurs cachés.

## Description des fichiers.

### Fichiers du dossier Utilisateur.
Voici la liste des fichiers contenus dans ce dossier avec la description de leur rôle. Ils ne sont pas
obligatoirement tous présents sur votre installation, car ils se créent au fil du temps et des besoins ;
parfois même, leur création nécessite une intervention manuelle.

- `color`
  Dossier utilisateur contenant les éventuels profils de couleur d'entrée et/ou de sortie. Ce dossier ne
  contient pas directement les profils. Il contient uniquement deux dossiers in et out. Les dossiers
  `color`, `color/in` et `color/out` ne sont pas créés automatiquement lors de la configuration initiale
  de Darktable. Si vous avez besoin de ces dossiers pour y déposer des profils, vous devez les créer.
  - `color/in`
    Dossier utilisateur contenant les profils de couleur d'entrée. Ces fichiers de profil sont au format ICC.
  - `color/out`
    Dossier utilisateur contenant les profils de couleur de sortie. Ces fichiers de profil sont au format ICC.

- `darktablerc`
  | Utilisateur | Configuration | Texte |<br/>La plupart des données de configuration contenues dans les
  fichiers `darltablerc` ci-dessous peuvent être modifiées via les différents onglets de la fenêtre
  « préférences » de Darktable. Il existe cependant quelques valeurs très peu utilisées ou « un peu trop
  sensibles » qui ne sont manipulables que par la modification manuelle de ces fichiers. Darktable enregistre ce
  fichier chaque fois que l'on quitte le logiciel. Les éventuelles personnalisations doivent donc se faire quand
  Darktable n’est pas actif.
  - `darktablerc-common`
  Fichier contenant les données de configuration du logiciel, communes à tous les espaces de travail.
  - `darktablerc`
  Fichier contenant les données de configuration du logiciel pour l'espace de travail par défaut.
  - `darktablerc-<nom-de-l-espace>`
  Fichier contenant les données de configuration du logiciel pour l'espace de travail `<nom-de-l-espace>`.
  
- `data.db`
  | Utilisateur | Développement | Binaire |<br/>Fichier qui contient la seconde partie de la Base de Données
  (BdD). Contient les mots-clés, les styles, les préréglages, la géolocalisation. L’emplacement de ce fichier
  peut être modifié avec l’option de lancement `–-library`. L’utilisation de cette option modifiera
  simultanément l’emplacement de `data.db` et de `library.db`. Fichier au format SQLite. Ce ficier est commun
  à tous les espaces de travail.

- `data.db.lock`
  | Utilisateur | Configuration | Texte |<br/>Fichier de verrouillage de la seconde partie de la BdD.
  Il est créé au moment de l’ouverture de celle-ci et supprimé lors de sa fermeture. Dans de rares cas,
  Darktable ne peut pas supprimer ce fichier avant de s’arrêter. S’il subsiste, le prochain lancement de
  Darktable avortera puisque celui-ci considérera que la BdD est déjà ouverte par un autre logiciel.
  Dans ce cas, la suppression de ce fichier `.lock` réglera le problème. Il contient le « Process Id » du
  processus qui a ouvert la BdD. Ce fichier suit le fichier data.db. Si l’emplacement de data.db a été
  modifié avec l’option `–-library`, l’emplacement du fichier de verrouillage le sera également. Ce ficier
  est commun à tous les espaces de travail.
  
- `data.db-pre-<version>`
  | Utilisateur | Développement | Binaire |<br/>L’installation d’une nouvelle version majeure de Darktable
  nécessite parfois (souvent) une modification du schéma de la base de données rendant incompatible la BdD
  avec la version antérieure. Avant cette modification, une sauvegarde est créée automatiquement par copie
  du fichier `data.db`. Ce fichier peut être supprimé s’il n’est pas envisagé de retour vers une version
  antérieure. Dans le nom de ce fichier, <version> correspond au numéro de la nouvelle version de Darktable
  en cours d’installation. Fichier au format SQLite. Ce ficier est commun à tous les espaces de travail.

- `data.db-snp-<date>`
  | Utilisateur | Développement | Binaire |<br/>Ces fichiers contiennent des instantanés (snapshots en anglais,
  d’où l’abréviation snp) de la BdD. C'est-à-dire, une sauvegarde de la BdD faite automatiquement et à
  cadence régulière, afin de pouvoir revenir à une situation correspondant à la date mentionnée dans le nom du
  fichier. La date est enregistrée sous forme compacte - sans séparateurs -, selon la séquence suivante
  AAAAMMJJhhmmss. Vous pouvez régler les paramètres de maintenance de la BdD dans la fenêtre des préférences
  de Darktable → onglet stockage → paragraphe base de données. Fichier au format SQLite. Ce ficier est commun
  à tous les espaces de travail.

- `library.db`
  Utilisateur | Développement | Binaire |<br/>Fichier qui contient la première partie de la BdD pour l'espace
  de travail par défaut. Contient toutes les données de développement. L’emplacement de ce fichier peut être
  modifié avec l’option de lancement `–-library`. L’utilisation de cette option modifiera simultanément
  l’emplacement de `data.db` et de `library.db`. Fichier au format SQLite.

- `library-<nom-de-l-espace>.db`
  Utilisateur | Développement | Binaire |<br/>Fichier qui contient la première partie de la BdD pour l'espace
  de travail `<nom-de-l-espace>`. Les caractéristiques de ce fichier sont les mêmes que celles du fichier
  `library.db` ci-dessus.

- `library.db.lock`
  | Utilisateur | Configuration | Texte |<br/>Fichier de verrouillage de la première partie de la BdD pour
  l'espace de travail par défaut. Lire les précisions concenrnat le fichier `data.db.lock` ci-dessus. Si
  l’emplacement de `library.db` a été modifié avec l’option `–-library`, l’emplacement du fichier de
  verrouillage le sera également.

- `library-<nom-de-l-espace>.db.lock`
  | Utilisateur | Configuration | Texte |<br/>Fichier de verrouillage de la première partie de la BdD. pour
  l'espace de travail `<nom-de-l-espace>`. Les caractéristiques de ce fichier sont les mêmes que celles du
  fichier `library.db.lock` ci-dessus.

- `library.db-pre-<version>`
  | Utilisateur | Développement | Binaire |<br/>Fichier de reprise de la première partie de la BdD pour
  l'espace de travail par défaut. L’installation d’une nouvelle version majeure de Darktable
  nécessite souvent une modification du schéma de la base de donnée rendant incompatible la BdD avec la
  version antérieure. Avant cette modification, une sauvegarde est créée automatiquement par copie
  du fichier `library.db`. Ce fichier peut être supprimé s’il n’est pas envisagé de retour vers une version
  antérieure. Dans le nom, `<version>` correspond au numéro de la nouvelle version de Darktable en cours
  d’installation. Fichier au format SQLite.

- `library-<nom-de-l-espace>.db-pre-<version>`
  | Utilisateur | Développement | Binaire |<br/>Fichier de reprise de la première partie de la BdD pour
  l'espace de travail `<nom-de-l-espace>`. Les caractéristiques de ce fichier sont les mêmes que celles du
  fichier `library.db-pre-<version>` ci-dessus.

- `library.db-snp-<date>`
  | Utilisateur | Développement | Binaire |<br/>Fichiers de sauvegarde de la première partie de la BdD
  pour l'espace de travail par défaut. Ces fichiers contiennent des instantanés (snapshots en anglais,
  d’où l’abréviation « snp ») de la BdD. C’est-à-dire, une sauvegarde de la BdD faite automatiquement et
  à cadence régulière, afin de pouvoir revenir à une situation correspondant à la date mentionnée dans le
  nom du fichier. La date est enregistrée sous forme compacte – sans séparateurs – selon la séquence suivante
  AAAAMMJJhhmmss. Vous pouvez régler les paramètres de maintenance de la BdD dans la fenêtre des préférences
  de Darktable → onglet stockage → paragraphe base de données. Fichier au format SQLite.

- `library-<nom-de-l-espace>.db-snp-<date>`
  | Utilisateur | Développement | Binaire |<br/>Fichier de sauvegarde de la première partie de la BdD pour
  l'espace de travail `<nom-de-l-espace>`. Les caractéristiques de ce fichier sont les mêmes que celles du
  fichier `library.db-snp-<date>` ci-dessus.

- `lua`
  Dossier utilisateur contenant les éventuels scripts additionnels, ceux que vous avez importés comme ceux que
  vous avez éventuellement créés. Les scripts sont écrits en langage Lua. Pour découvrir Lua, outre le site
  [lua.org](https://lua.org/), vous disposez sur le site [darktable.org](https://www.darktable.org/resources/)
  d’un chapitre dans le manuel de Darktable ainsi que d'un manuel dédié . Le dossier `lua` n’est pas
  créé automatiquement lors de la configuration initiale de Darktable. « Le script manager » le créera pour vous
  si vous importez les scripts proposés et packagés par la communauté. Si vous avez besoin d'y déposer vos
  propres scripts et qu'il n'a pas été créé par le script manager, vous devez le créer.

- `luarc`
  | Utilisateur | Configuration | Texte |<br/>Fichier qui contient la liste des scripts Lua à charger lors
  du lancement de Darktable.  « Le script manager » créera et modifiera ce fichier pour vous si vous importez
  les scripts proposés et packagés par la communauté. Sinon, pour intégrer vos propres scripts, il faudra le créer
  ou le modifier vous-même avec un éditeur de texte, en respectant strictement la syntaxe du langage Lua. Pour créer
  des scripts, voir des exemples dans le manuel de référence Lua disponible sur [lua.org](https://lua.org/) ainsi
  que le dans le manuel de Darktable et le manuel dédié aux scripts Lua sur le site
  [darktable.org](https://www.darktable.org/resources/).
   
- `presets.json`
  | Utilisateur | Configuration | Texte |<br/>Fichier contenant les profils de bruits calculés par l’utilisateur
  en vue d’effectuer des tests. Ce fichier n’existe que si vous l’avez copié vous-même à cet endroit. Il est le
  résultat du calcul du profil de bruit d’un boîtier. Ce fichier est au format json.

- `shortcutsrc`
  | Utilisateur | Configuration | Texte |<br/>Fichier qui contient les raccourcis clavier, éventuellement
  personnalisés. Les raccourcis peuvent tous être modifiés via l’onglet “raccourcis” de la fenêtre “préférences”
  de Darktable ou via la fenêtre dédiée accessible via l’icône représentant un clavier.

- `shortcutsrc.backup`
  | Utilisateur | Configuration | Texte |<br/>Fichier qui contient les valeurs sauvegardées des raccourcis, lors
  d’une modification de ceux-ci.

- `shortcutsrc.default`
  | Utilisateur | Configuration | Texte |<br/>Fichier qui contient les valeurs par défaut des raccourcis. C’est
  le seul fichier système qui est stocké dans le dossier utilisateur.

- `shortcutsrc.edit`
  | Utilisateur | Configuration | Texte |<br/>Fichier utilisé par la boite de dialogue « restauration raccourci »

- `styles`
  Dossier utilisateur contenant les fichiers de styles que vous avez créés. La suppression d’un de vos styles
  dans Darktable ne supprime pas le fichier dans ce répertoire. Le dossier `styles` n’est pas créé automatiquement
  lors de la configuration initiale de Darktable. Il est créé par Darktable quand vous créez un premier style.
  Il n’est pas nécessaire d’y déposer les styles que vous importez.

  - `<vos styles>.dtstyle`
    | Utilisateur | Développement | Texte |<br/>Les fichiers du dossier styles sont des fichiers au format xml,
    mais le contenu, bien que de format texte, est plutôt un BLOB (Binary Large OBject), donc non modifiable.
    Ces fichiers sont suffixés avec l’extension “`.dtstyle`”.

- `themes`
  Dossier utilisateur contenant les éventuels fichiers de configuration personnalisés de l'aspect de l'interface
  de Darktable. Ces fichiers sont au format CSS (Cascading Style Sheet) tel que décrit par le W3C. Cependant,
  toutes les fonctionnalités CSS ne sont pas prises en charge par l’interface graphique Gtk utilisée par Darktable.
  Si vous avez besoin de ce dossier pour y déposer vos propres feuilles de styles, vous devez le créer.
  - `<vos thèmes>.css`
    | Utilisateur | Configuration | Texte |<br/>Fichier(s) CSS. Le nommage est libre, mais il est recommandé
    d'utiliser un nom de fichier différent des fichiers de style fournis par défaut (voir ci-dessous le dossier
    thèmes dans le paragraphe ‘Fichiers du dossier système’). Si vous complétez ou modifiez un de ces fichiers, ne le
    copiez pas en totalité. Créez votre fichier, commencez-le par une instruction d’importation telle que décrite
    dans la norme CSS, puis ajoutez simplement vos modifications.

- `user.css`
  | Utilisateur | Configuration | Texte |<br/>Fichier CSS. Ce fichier contient les personnalisations des feuilles
  de style que vous faites à partir de la fenêtre des préférences de Darktable → onglet général → option « modifier
  le thème via les ajustements CSS ci-dessous » et la zone de saisie située juste en dessous.

- `watermarks`
  Dossier utilisateur contenant les fichiers des filigranes. Ces fichiers doivent être au format SVG. Ils peuvent être
  créés avec n’importe quel outil capable de produire ce type de format de fichier. Le dossier `watermarks` n’est
  pas créé automatiquement lors de la configuration initiale de Darktable. Si vous avez besoin de ce dossier pour y
  déposer des fichiers de filigranes, vous devez le créer.

#### Précisions sur le contenu de la base de donnée

Parmi ces fichiers, deux fichiers constituent la BdD ; ce qu’ailleurs, on appelle le catalogue. Ces fichiers
sont au format SQLite. Il est possible de les consutler avec un utilitaire dédié à SQLite. Sqlitebrowser, par exemple.

- `library.db` : qui contient toutes les données de développement. En fait, tout ce que l'on retrouve dans les
  fichiers “sidecar“ associés à chaque fichier de photo et portant l'extension `.xmp`.

- `data.db` : qui contient tout le reste, les mots-clés, les styles, les pré-réglages, la géolocalisation, ...

La scission en deux fichiers de la BdD a été faite pour pouvoir la régénérer à partir des fichiers XMP sans perdre
les mots clés, les styles et les pré-réglages. Pour faire cela, il suffit de réinitialiser uniquement library.db.

L'option de lancement `--library` permet de faire fonctionner Darktable avec une base de donnée située à un autre
emplacement ; avec le nom d'emplacement `:memory:` une base de donnée sera crée uniquement en mémoire, et sera effacée
lors de la fermeture du logiciel.

#### Sauvegarde 

Comme vous pouvez le constater, la plupart de ces fichiers contiennent des données qui vous sont propres.
Et même, si la plupart d’entre eux peuvent être reconstitués facilement, il est certainement plus facile d'avoir
une sauvegarde du tout. Donc sauvegarder le dossier complet n'est pas une mauvaise idée. D'autant plus que les
fichiers qu'il contient ne représentent qu'un tout petit volume d'informations. L'essentiel en terme de volume,
ce sont les deux fichiers de la BdD. La sauvegarde du dossier devra être réalisée lors Darktable n’est pas actif.

#### Réinitialisation / restauration

À la lecture de ce qui précède, vous pouvez imaginer qu’une réinitialisation partielle ou complète de la
configuration peut se faire en supprimant une partie ou la totalité des fichiers de configuration utilisateur.
Attention cependant, car il existe un lien entre certaines informations contenues dans la base de donnée et les
vignettes stockées dans le dossier `cache` (voir paragraphe ci-dessous). Si vous supprimez la BdD, il vous faudra
également réinitialiser le cache des vignettes.

### Fichiers du dossier Cache.
Voici la liste des dossiers et sous dossiers du dossier cache, ainsi que la description des fichiers qu’ils
contiennent

- `cached_kernels_for_<référence de votre carte graphique>`
  Dossier contenant les versions compilées à la volée par Darktable des kernels openCL (Voir dans la section
  Système ci-dessous, le dossier `kernels`). Si vous avez plusieurs cartes graphiques, vous aurez plusieurs
  dossiers de ce type, un par carte graphique.

- `mipmaps-<mipmaps Id>.d`
  Dossier contenant le cache des vignettes utilisées en table lumineuse et dans les bandeaux. Le mipmaps Id
  est un hashcode calculé lors de l’initialisation d’une instance de Darktable. Ce dossier contient lui-même
  plusieurs sous dossiers nommés de `0` à `8`. Lors d’une première utilisation, seuls les dossiers `0`, `1` et
  `2` sont créés. Les autres dossiers seront créés à la demande et de façon transparente par Darktable ou
  explicitement lors de l’utilisation de l’outil `darktable-generate-cache`. Chaque dossier correspond à une
  taille de vignette ; de la plus petite taille dans le dossier `0`, à la plus grande dans le dossier `8`.
  Les tailles des vignettes sont de 110, 225 et 450 pixels sur le plus grand coté pour les dossiers `0`, `1` et `2`.

  Les vignettes elles-mêmes sont des fichiers JPEGs qui sont nommés selon le numéro de photo. Ce numéro est
  créé lors de l’importation, de manière totalement automatique et désigne univoquement la photo dans la BdD
  de Darktable. Il est visible dans le module informations de l’image, à la ligne “numéro”.

  Attention ! comme cela a déjà été évoqué à la fin du chapitre traitant des fichiers du dossier utilisateur,
  si vous réinitialisez la BdD de Darktable, il faudra également réinitialiser le cache des vignettes, car
  comme dit ci-dessus, celles-ci sont nommées avec le numéro de la photo. Après réinitialisation de la BdD,
  il sera donc certain que les numéros des anciennes vignettes ne correspondront plus avec les numéros des
  nouvelles photos importées. L’affichage en table lumineuse sera très étrange !

### Fichiers du dossier Temporaire.
Voici la description des fichiers qu’il peut contenir.

- `darktable_bt_<numéro>.txt`
  | Utilisateur | Développement | Texte |<br/>Fichier de débogage. Ce fichier peut être produit par Darktable
  en cas de plantage. Il pourra être utile aux développeurs pour identifier la partie du code à l’origine du
  plantage. Dans ce cas, cependant, il sera nécessaire de reproduire le plantage avec une version de Darktable
  compilée afin que les “symboles” soient inclus dans ce fichier. Le numéro est variable à chaque lancement
  de Darktable (probablement le numéro de processus, mais je n’ai pas pu le vérifier, car je n’ai
  pas de plantages ;-)).

### Fichiers du dossier système.
Voici la liste des fichiers de ce dossier avec la description de leur contenu.

- `darktable.bash`
  | Système | Configuration | Texte |<br/>Fichier de lancement de Darktable. [à compléter !]

- `darktablerc`
  | Système | Configuration | Texte |<br/>Fichier contenant les données de configuration du logiciel
  lui-même. Il s’agit du fichier par défaut qui est copié lors du premier démarrage d’une nouvelle
  instance de Darktable.

- `gdb_commands`
  | Système | Configuration | Texte |<br/>Fichier contenant quelques commandes utilisées lors d’un
  lancement de Darktable via la commande gdb à des fins de débogage.

- `kernels`
  | Système | Configuration | Texte |<br/>Dossier contenant les codes support OpenCL des modules
  correspondants. Ces fichiers sont au format langage “c”.

- `latex`
  Dossier contenant un fichier de configuration utilisé lors de l’exportation sous forme de
  “modèle de livre LaTex” (langage LaTex)

- `lua`
  Dossier contenant un fichier utilisé pour le debug des scripts Lua (langage Lua) 

- `luarc`
  | Système | Configuration | Texte |<br/>Fichier initial de Lua.

- `noiseprofiles.json`
  | Système | Configuration | Texte |<br/>Fichier contenant tous les profils de bruits connus
  de Darktable. Ce fichier peut être masqué en totalité ou en partie par un fichier de même nom créé
  dans le dossier Utilisateur Fichier au format json.

- `pixmaps`
  Dossier contenant les icônes utilisées en interne par Darktable.

- `pswp`
  Dossier contenant les fichiers nécessaires pour l’exportation sous forme de “galerie web”. Voir également
  le dossier `style`.

- `rawspeed`
  Dossier contenant les fichiers de configuration de Rawspeed. Rawspeed est la librairie sous-jacente de
  Darktable qui décode les fichiers raw. Ce dossier contient deux fichiers :
  - `cameras.xml`
    | Système | Développement | Texte |<br/>Ce fichier XML décrit tous les boîtiers pris en charge par
    rawspeed et donc par Darktable. Il contient sa propre DTD. Chaque entrée décrit toutes les caractéristiques
    du capteur du boîtier.
  - `showcameras.xsl`
    | Système | Développement | Texte |<br/>Ce second fichier est la feuille de style nécessaire pour imprimer
    le fichier cameras.xml, le cas échéant,

- `style`
  Dossier contenant les feuilles de style (css), ainsi que quelques fichiers JPEG, GIF et ICO, nécessaires à
  l’exportation sous forme de “galerie web”. Voir aussi le dossier `pswp`.

- `styles`
  Dossier contenant les styles spécifiques aux appareils photo pris en charge par Darktable (plus de 500)
  L'utilisation de ces styles permet d'obtenir rapidement un rendu plus proche de celui des fichiers JPEG
  fournis par l'appareil photo.
  
  - `darktable_<marque>_<modèle>.dtstyle`
    | Système | Développement | Texte |<br/>Fichiers de style fournis par Darktable. Pour obtenir le nom réel
    du fichier, il faut bien sûr remplacer `<marqueè>` et `<modèle>` par le nom de la marque et le nom du modèle.
    Par exemple : `darktable_Fujifilm_X100F.dtsyle`

- `themes`
  Dossier contenant les fichiers de configuration de l'aspect de l'interface de Darktable. Ces fichiers sont au
  format Cascading Style Sheet (CSS) tel que décrit par le W3C. Cependant, toutes les fonctionnalités CSS ne sont
  pas prises en charge par l’interface graphique Gtk utilisée par Darktable. Ce dossier contient les fichiers
  suivants. Tous sont classifiés <br/>| Système | Configuration | Texte |
  
  - `darktable.css`
    Feuille de style d’origine de Darktable.

  - `darktable-elegant-dark.css`
    Feuille de style élégante sombre.

  - `darktable-elegant-darker.css`
    Feuille de style élégante plus sombre.

  - `darktable-elegant-grey.css`
    Feuille de style élégante gris clair.

  - `darktable-elegant-highcontrast.css`
    Feuille de style élégante contrastée.  

  - `darktable-icons.css`
    Feuille de style sombre avec icônes.

  - `darktable-icons-dark.css`
    Feuille de style sombre avec icônes.

  - `darktable-icons-darker.css`
    Feuille de style plus sombre avec icônes.

  - `darktable-icons-grey.css`
    Feuille de style gris clair avec icônes.

  - `darktable-icons-highcontrast.css`
    Feuille de style contrastée avec icônes.
    
- `tools`
  Dossier qui contient quelques programmes utilitaires d’administration de Darktable. Actuellement ce sont
  des scripts bash (Linux, MacOS). En voici la liste :
  - `common.sh`
  - `extract_wb_from_images.sh`
  - `purge_from_cache.sh`
  - `purge_non_existing_images.sh`
  - `purge_unused_tags.sh`
Attention ! Ces scripts ne sont pas disponibles dans la version Windows, car ce sont des scripts écrits en
langage Bash qui nécessitent donc l’interpréteur bash, non disponible nativement sous windows. Le seul script
disponible dans la version Windows est :
  - `purge_nonexistent_images.bat`
Néanmoins si vous avez besoins d'utiiser les scritps Disponibles dans les versions Linux et MacOS,
il est tout à fait possible de les télécharger à partir du dépot
[Github de darktable](https://github.com/darktable-org/darktable)
et de les exécuter dans le sous-système Linux (WSL) disponible dans Windows.

- `watermarks`
  Dossier contenant les quelques fichiers de filigrane disponibles par défaut avec Darktable. Ces fichiers
  sont au format SVG. En voici la liste. Tous sont classifiés <br/>
  | Système | Développement | Texte |
  - `darktable.svg`
  - `fixed-size-text.svg`
  - `hasselblad.svg`
  - `metadata-template.svg`
  - `promo.svg`
  - `simple-text-shadow.svg`
  - `simple-text.svg`
  Vous pouvez copier ces fichiers dans votre propre dossier de configuration afin de les utiliser comme
  base de travail et créer vos propres filigranes.

- `wb_presets.json`
  | Système | Configuration | Texte |<br/>Fichier contenant tous les préréglages de balance des blancs
  des appareils photos connus de Darktable. Fichier au format json.

Vous avez peut-être remarqué que je n’ai pas parlé des fichiers de caractérisation des objectifs.
Il y a plusieurs raisons à cela :
- Ces fichiers n’appartiennent pas à Darktable. Ils dépendent d’une librairie tierce : Lensfun.
- Puisqu’ils appartiennent à Lensfun, ils sont fournis par cette librairie ; pas par Darktable.
- Darktable utilise plusieurs versions différentes de Lensfun, selon les distributions et / ou les packages.
- L’emplacement des fichiers dépend de la version de Lensfun, et du mode de mise à jour de ces fichiers
; parfois aussi de la distribution.
- L’entête des fichiers de Lensfun change légèrement selon la version.

Bref tout cela fait beaucoup de variables et il faudrait probablement un document aussi volumineux que
celui-ci pour faire l’inventaire exhaustif de toutes les hypothèses. Ce sujet a déjà été traité
abondamment sur le [forum darktable.fr](https://forums.darktable.fr/index.php), sans que quelques
règles simples puissent être établies. Donc, pour l’instant, je n’en parle pas.

### Fichiers dans vos dossiers de photos.
| Utilisateur | Développement | Texte |<br/>En plus de tous ces fichiers de configuration ou de fonctionnement,
Darktable produit des fichiers XMP qui sont associés à chaque fichier image que vous avez importé dans
Darktable. Ces fichiers sont nommés en ajoutant l’extension “.xmp” au nom complet de vos fichiers images
(nom + extension). Ces fichiers contiennent toutes les données nécessaires pour pouvoir reproduire le traitement
de vos images, même si vous avez supprimé l’intégralité des fichiers que j’ai listés ci-dessus. Tant que vous
avez ces fichiers, vous n’avez rien perdu. Ces fichiers sont au format XMP (sur une base xml). La norme XMP
est maintenant une norme ISO sous le numéro ISO-16684-1:2012.

Voilà, j'espère ne pas en avoir oublié. N’hésitez pas à me signaler toute erreur ou omission !

Jean-Pierre Verrue (contact at jpverrue point fr)
