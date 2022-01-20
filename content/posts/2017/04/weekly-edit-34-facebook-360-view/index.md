---
title: "Weekly Edit 35: Facebook 360 View"
date: "2017-04-08"
categories: 
  - "tutoriels"
tags: 
  - "durgin"
  - "tutoriel"
---

La vidéo de Weekly Edit de cette semaine traite d'un script qui permettra à Facebook de reconnaître votre photo comme vue panorama à 360°.

Bon visionnage !

{{< youtube cLf__wx2-ms >}}

Le script:

#!/usr/bin/env bash
# Adds metadata to images so that Facebook displays them as panoramas.
# https://discuss.pixls.us/t/panorama-mode-in-facebook/3585
# By Harry Durgin and Morgan Hardwood

if \[\[ ! -f ${1} \]\]; then
    printf '%sn' "No input file specified or file not found." "Aborting."
    exit 1
fi

hfov=0
while \[\[ hfov -lt 100 || hfov -gt 360 \]\]; do
    read -r -p "Enter horizontal field of view (100-360): " hfov
done

for f in "${@}"; do
    printf '%sn' "" "Processing: $f"

    width="$(exiftool -T -ImageWidth "${f}")"
    height="$(exiftool -T -ImageHeight "${f}")"
    ratio=$((width/height))

    if [[ ratio -lt 2 ]]; then
        printf '%sn' "Image must have a ratio of at least 2:1." "Skipping."
        continue
    fi

    width_full=$((360*width/hfov))
    height_full=$((180*width_full/hfov))
    height_full=$((width_full/2))
    left_crop=$(((width_full-width)/2))
    top_crop=$(((height_full-height)/2))

    exiftool 
        -FullPanoWidthPixels="$width_full" 
        -FullPanoHeightPixels="$height_full" 
        -CroppedAreaLeftPixels="$left_crop" 
        -CroppedAreaTopPixels="$top_crop" 
        -CroppedAreaImageWidthPixels="$width" 
        -CroppedAreaImageHeightPixels="$height" 
        -ProjectionType=equirectangular 
        -UsePanoramaViewer=True 
        "$f"
done

Source: [http://weeklyedit.com/facebook-360-view/](http://weeklyedit.com/facebook-360-view/)
