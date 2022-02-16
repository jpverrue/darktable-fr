---
title: "Weekly Edit 15: Tout sur la couleur"
date: "2016-11-19"
series:
  - "Tutoriels de Harry Durgin"
categories: 
  - "tutoriels"
tags: 
  - "Harry Durgin"
  - "tutoriel"
---

Pour ce nouveau tuto vidéo, Harry Durgin montre comment redonner de la couleur à vos images ternes. Pour cela, **il a crée une carte de référence de couleurs (Lab Color Chart) disponible** [ici](http://weeklyedit.com/wp-content/uploads/2016/11/lab_color_reference.png). Avec le module pipette et cette carte, il vérifie si les couleurs sont justes. La vidéo est en anglais, vivement qu'un utilisateur francophone nous fasse un tuto en français :-)

{{< youtube dII4pX-ylIk >}}

En bonus, Harry a calibré son écran pour obtenir deux profils d'affichage, un pour le web et un pour l'impression:

```bash
#!/bin/zsh 
dispwin -c dispcal -v -m -H -y l -q l -t 6500 -b 80 -g 2.2 web targen -v -d 3 -G -f 128 web dispread -v -N -H -y l -k web.cal web colprof -v -D "web" -C "Harry Durgin Photography" -q m -a G -n c web
 
dispwin -c dispcal -v -m -H -y l -q l -t 5500 -b 80 -g 2.2 print targen -v -d 3 -G -f 128 print dispread -v -N -H -y l -k print.cal print colprof -v -D "print" -C "Harry Durgin Photography" -q m -a G -n c print
```

Ainsi il bascule d'un profil à l'autre avec les commandes:

```shell
dispwin -I web.icc
```
pour le web, et

```shell
dispwin -I print.icc
```

pour l'impression.

Bon visionnage !
