---
title: "Weekly Edit 16: Superlune avec darktable"
date: "2016-11-25"
series:
  - "Tutoriels de Harry Durgin"
categories: 
  - "tutoriels"
tags: 
  - "Harry Durgin"
  - "tutoriel"
---

Nouvelle vidéo d'Harry Durgin, cette fois un HDR de la superlune qui a eu lieu il y a peu de temps. Bon visionnage !

{{< youtube JQtpQw5eevM >}}

Les fichiers RAW utilisés:

[Supermoon (15 second)](https://drive.google.com/open?id=0B7mIPRZEcQpANktFNjFpVEJ4Q3c) [Supermoon (1/4 second)](https://drive.google.com/open?id=0B7mIPRZEcQpANXA2dlRTVllZNzg) [Thailand](https://drive.google.com/open?id=0B7mIPRZEcQpAUk0yTG9KYnF0ejQ)

Dernière version de son script compositing utilisé dans la vidéo:

```bash
#!/bin/zsh

ls -t .config/darktable/watermarks/tmp* |grep -v svg |head -n1 |read file
inkscape -f "$file" -l '.config/darktable/watermarks/tmp.svg'
ls -l '.config/darktable/watermarks/tmp.svg' |cut -d' ' -f5 |read size_n
ls -lh '.config/darktable/watermarks/tmp.svg' |cut -d' ' -f5 |read size_h
[ $size_n -gt 8000000 ] && echo "File too large. Size $size_h, but needs to be smaller than 8M." || echo "File size okay $size_h"
```
