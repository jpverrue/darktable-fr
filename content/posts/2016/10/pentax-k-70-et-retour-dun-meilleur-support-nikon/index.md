---
title: "Pentax K-70 et retour d'un meilleur support Nikon"
date: "2016-10-16"
categories: 
  - "actualites"
tags: 
  - "news"
---

Quelques nouvelles du front sur le développement de darktable !

Le support pour le Pentax K-70 devrait être disponible dans les prochaines versions: [https://github.com/darktable-org/darktable/pull/1312#discussion_r83555944](https://github.com/darktable-org/darktable/pull/1312#discussion_r83555944)

Si vous faites parti des quelques utilisateurs d'appareils Nikon qui se plaignent que darktable ne reconnaisse plus correctement les fichiers RAW issus de ces appareils et bien sachez qu'il y a eu hier et aujourd'hui un tas de commits surement en rapport avec ce problème.

[Nikon P6000: reenable camera support, fixes #11227](https://github.com/darktable-org/darktable/commit/8d32e613babdf0783d3d7771a92bb70ca1b25941 "Nikon P6000: reenable camera support, fixes #11227
<div></div>
Uncompressed 12 Bit is the only mode of this camera
according to user manual.")

[Nikon E5400: reenable camera support after check, fixes #11228](https://github.com/darktable-org/darktable/commit/85d9cd9e02bebe0a012396ccf8ef7642af0fa915 "Nikon E5400: reenable camera support after check, fixes #11228
<div></div>
User manual mentions only uncompressed TIFF, no option to switch
to 14Bit or compressed mode. Also there is a NEF sample file on
rawsamples.ch.")

[Nikon E5700: reenable camera support after check, fixes #11229](https://github.com/darktable-org/darktable/commit/8b31ccb2d2f21a14ac5c0d2e9e198e8ecc18e7f7 "Nikon E5700: reenable camera support after check, fixes #11229
<div></div>
User manual:
{{{
Uncompressed: NEF (RAW-quality images), and
TIFF-RGB (HI-quality images)
}}}")

[Nikon Df: reenable camera support for 14Bit, #11231 (incomplete)](https://github.com/darktable-org/darktable/commit/d555af2de931a395eb61b3f1b515ce15aa32b37b "Nikon Df: reenable camera support for 14Bit, #11231 (incomplete)
<div></div>
12 Bit samples are missing.")

[Nikon D3s: reenable camera support for 12Bit, #11232 (incomplete)](https://github.com/darktable-org/darktable/commit/4d2deccb6f9ac02b9545b36002bb20059ec1abd8 "Nikon D3s: reenable camera support for 12Bit, #11232 (incomplete)")

[Nikon D100: reenable camera support after check, fixes #11238](https://github.com/darktable-org/darktable/commit/7cd030b3477b50fbd3474c01b80171db96785e1c "Nikon D100: reenable camera support after check, fixes #11238
<div></div>
12Bit mode is the only mode.
Only 12Bit compressed samples were availible but up
to now compressed and umcpmressed hat always the same
black and white levels, so reenable both.")

[Nikon D1H: Reenable camera support after check, fixes #11239](https://github.com/darktable-org/darktable/commit/1b8006ee17cf5cf0b5f14aa421ca30552a302ff9 "Nikon D1H: Reenable camera support after check, fixes #11239
<div></div>
Only 12 Bit compressed and uncompressed mode is availiable.")

[Nikon D5: reenable camera support after check, fixes #11236](https://github.com/darktable-org/darktable/commit/9790fe937f5841bedefd39c923df636dc94fd645 "Nikon D5: reenable camera support after check, fixes #11236
<div></div>
Samples in ticket are all black, for D5_Uncompressed_12bit.NEF i get a
warning: {{{[rawspeed] (D5_Uncompressed_12bit.NEF) Skipped out of buffer
}}}
<div></div>
Samples from
http://www.photographyblog.com/reviews/nikon_d5_review/sample_images/
are ok.")

Voilà pour les dernières news :)
