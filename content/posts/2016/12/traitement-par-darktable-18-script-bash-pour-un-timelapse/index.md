---
title: "Weekly Edit 18: Script bash pour un timelapse"
date: "2016-12-09"
categories: 
  - "tutoriels"
tags: 
  - "durgin"
  - "tutoriel"
---

Nouvelle vidéo d'Harry Durgin qui illustre l'utilisation d'un script bash pour créer un timelapse à partir d'images provenant d'une webcam sur internet.

Dans un premier temps il cherche une webcam sur internet. Ensuite il configure le minuteur pour télécharger une image toutes les 5 minutes et les archiver. Chaque images téléchargées subissent une édition basique via darktable-cli (l'interface en ligne de commande). Une fois qu'il y a assez d'images, on peut créer une vidéo de timelapse. Bon visionnage !

{{< youtube SbBsu81kLgM >}}

Les fichiers utilisées:

[timelapse-deflicker.pl (by Vangelis Tasoulas)](https://drive.google.com/open?id=0B7mIPRZEcQpAcDJ0aHkwNGJkelE) [maunaloa.xmp](https://drive.google.com/open?id=0B7mIPRZEcQpAcV9RTUJKNS1xLTA)

Le script **get_images.zsh**

```bash
#!/bin/zsh

url='http://www.esrl.noaa.gov/gmd/webdata/mlo/webcam/northcam.jpg'
xmp='maunaloa/maunaloa.xmp'
dir='maunaloa'

TZ='HST' date |read time
TZ='HST' date +%s |read seconds

# DOWNLOAD WEBCAM IMAGE
wget -T6 --random-wait -O /tmp/image.jpg "$url"

# PROCESS WITH DARKTABLE
rm /tmp/image_dt\*
/opt/darktable/bin/darktable-cli /tmp/image.jpg "$xmp" --width 1920 --height 1080 --upscale true /tmp/image_dt.jpg

# ARCHIVE WITH DATE STAMP
convert /tmp/image_dt.jpg -pointsize 36 -fill "#FFFFFF" -draw "text 1400,1050 '$time'" ~/$dir/$seconds.jpg
```

Le script **make_movie.zsh**

```bash
#!/bin/zsh

num_images=2000
slow=8
frame_window=16
source_dir='/home/harry/int/maunaloa'
mkdir final &> /dev/null
cat /dev/null >frames

# COPY FILES
ls "$source_dir" |tail -n $num_images |while read file; do
  cp "$source_dir/$file" ./
done

# DEFLICKER
/home/harry/bin/timelapse-deflicker.pl -w 15 -p 2

# BUILD FRAME LIST
ls Deflickered |while read file; do
  seq 1 $slow |while read i; do
    echo Deflickered/$file >>frames
  done
done

wc -l frames |cut -d' ' -f1 |read num_frames
typeset -Z6 c

# CREATE FRAMES
seq 1 $num_frames |while read c; do
  convert \`head -n $frame_window frames\` -average final/$c.jpg
  sed -i '1d' frames
  echo -ne "e\[0Kr$c / $num_frames"
done

# MAKE MOVIE
avconv -f image2 -r 30 -i final/%06d.jpg -aspect 16:9 -b:v 15000k -y video.avi &> /dev/null
```