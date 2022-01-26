---
title: "Profiler vos capteurs n'est peut-être pas la bonne idée que vous pensez"
date: "2021-11-15"
series:
  - "Tutoriels d'Aurélien Pierre"
categories: 
  - "tutoriels"
tags:
  - "tutoriel"
  - "Aurélien Pierre"
---

Profiler un capteur (souvent improprement appelé « calibrer », mais soyons exacts) consiste à prendre en photo une mire d'étalonnage puis à établir, au moyen d'un logiciel de gestion des couleurs (principalement ArgyllCMS), une correction colorimétrique qui permet de compenser sa déviation.

On produit alors un profil ICC générique qui sert à décrire le capteur dans des conditions habituelles et statistiquement représentatives, qui seront néanmoins invalidées en cas d'éclairage artificiel coloré. Ce profil nous servira à convertir les données exprimées dans l'espace RGB du capteur vers un espace de travail standard : le CIE XYZ 1931, qui sert de glue à toute la chaîne graphique en contenant tout l'espace des couleurs visibles pour l'humain moyen.

En théorie, c'est donc une bonne chose pour obtenir des couleurs plus fiables, plus fidèles, plus prévisibles. Pourquoi ne pas se lancer ?

Sauf qu'en pratique, ça fait souvent l'effet inverse car faire une **bonne** photo d'une mire d'étalonnage est difficile quand on n'a pas un laboratoire de métrologie. Il y a 5 problèmes principaux :

1. il faut une source de lumière standardisée, à spectre large, très proche d'une lumière du jour et absolument exempte de teinte parasite,
2. il faut un éclairement absolument homogène sur la surface de la mire et sans reflet,
3. il faut normaliser la photo correctement, c'est à dire effectuer une balance des blancs primaire précise _(et échantillonner le gris moyen à la pipette ne suffit pas… car le gris moyen du Color Checker n'est pas complètement neutre : en sRGB, il prend les valeurs 139, 136, 135 chez Spyder, donc il est légèrement chaud)_,
4. il faut exposer la mire au plus juste dès la prise de vue, pour éviter tant que possible les corrections d'exposition en logiciel _(parce qu'en réalité, un capteur n'est pas exactement linéaire, ce qui est pourtant l'hypothèse de fonctionnement d'une correction d'exposition logicielle)_,
5. il faut un objectif très neutre, car le verre et ses traitements de surface ajoutent aussi leurs déviations de couleur, qui n'ont rien à voir avec le capteur.

Sans ces 4 conditions, la photo sera impropre à un usage métrologique visant à étalonner l'instrument de mesure. Et du coup, le profil généré risque de faire plus de mal que de bien.

Or, pour un particulier sans formation adaptée ni matériel et environnement de travail standardisés, c'est pratiquement impossible d'avoir tout bon. Au minimum, il faudrait 4 tubes lumineux standardisés à un illuminant D65 avec un indice de rendu des couleurs supérieur à 98, de façon à encadrer la mire d'une lumière parfaitement homogène et standard. Puis il faudrait contrôler l'uniformité de l'éclairement patch par patch, avec un luxmètre de précision. Et enfin, bien sûr, pondre un profil de couleurs à l'aveugle ne suffit pas : il faut vérifier sa qualité, au moyen notamment du delta E moyen.

D'après ma longue expérience, en terme de profil générique, vous ne ferez pas mieux que les matrices standard, utilisées par darktable dans le module profil d'entrée pour les photo RAW, et qui viennent directement de chez Adobe, via son outil Adobe DNG Converter (publié sous licence libre, qui fait qu'on peut réutiliser les profils).

Ces profils standards ont un défaut : un manque de saturation par rapport à la réalité. Mon hypothèse est que c'est une mesure de sécurité pour prévenir les sorties de gamut intempestives. La bonne nouvelle, c'est que ça n'est pas une fatalité, grâce au module calibration des couleurs.

Ce module vous permet de faire une deuxième étape de profilage par dessus ce premier profil standard pris à Adobe, également à partir d'une mire d'étalonnage. Il dispose également d'un contrôle qualité interne, affichant le delta E moyen et maximum, qui permet de vérifier que le profil améliore effectivement la précision des couleurs. Vous n'avez donc pas besoin de me croire, il suffit d'essayer vous même… la précision finale est affichée de façon quantitative, et vous pouvez choisir la méthode qui vous donne le delta E le plus bas.

Or, d'après mes tests, le delta E moyen est toujours meilleur avec une première étape de profilage utilisant la matrice standard, dans le module profil d'entrée, suivie d'une seconde étape de profilage dans le module calibration des couleurs. Je n'ai pas d'explication sur la raison, mais des hypothèses : mon solveur interne, dans la calibration des couleurs, est probablement moins précis mais plus robuste (donc plus tolérant à vos erreurs de manipulation à la prise de vue de la mire), et la première étape de profilage générique dégrossit le travail, qu'on se content d'affiner derrière.

De plus, cette technique vous permet d'avoir un profil générique vraiment générique (donc médiocre tout le temps, mais prévisible) et de le compléter au besoin par un profilage plus spécifique, qui n'a pas besoin d'être standardisé mais simplement adapté aux conditions de prise de vue réelles des photos que vous allez traiter. On s'enlève une grosse contrainte sur la qualité de l'éclairage.

Pour toutes ces raisons, j'ai arrêté il y a des années d'essayer de me battre avec des profils ICC capteur faits maison. Typiquement, j'avais des problèmes dans les bleus, qui sortaient sur-saturés avec un bruit chromatique bizarre.

Vous n'êtes pas obligé de faire comme moi, mais si vous optez pour un profil ICC maison, pensez à utiliser le mode de vérification du module calibration des couleurs pour contrôler que tout se passe normalement et valider que le delta E moyen est bien plus bas qu'avec un profil standard. Et surtout, pour un profil générique, essayez d'évaluer la qualité du profil sur une photo différente de celle qui a servi à l'établir, ce qui permettra de juger de sa robustesse.

Notez que la situation est différente si vous profilez un écran, car il produit sa propre lumière et n'est pas sujet aux reflets, donc on a réglé tous les problèmes qui se posaient avec la prise en photo d'une mire réfléchissante. Profilez vos écrans avec des profils de type matrice et courbes 3D, surtout pas avec des LUT (qui sont théoriquement plus précises mais ne pardonnent aucune erreur de mesure et ne sont valides que pour une intensité définie de rétro-éclairage).

Notez finalement que tout profil n'est pas forcément ICC. ICC (v2 ou v4) est une spécification particulière de profil de couleur, mais à la fin, tout profil ne fait que décrire la conversion entre deux espaces de couleur, et pour nous ici, entre le RGB capteur et le CIE XYZ 1931 de référence. D'autres profils existent suivant les besoins et les priorités, avec une pris en charge logicielle fatalement moins large.
