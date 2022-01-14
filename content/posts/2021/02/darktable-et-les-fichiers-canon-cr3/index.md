---
title: "darktable et les fichiers Canon CR3"
date: "2021-02-09"
categories: 
  - "actualites"
---

Les fichiers RAW Canon CR3, produits par les appareils photo Canon récents, ne sont supportés par aucune version de darktable à ce jour. En effet, ces fichiers particuliers utilisent un format de conteneur relativement récent, ISOBMFF, dont le statut des spécifications (_protégées par brevet ou pas ?_) a fait débat pendant plusieurs années, et les développeurs du projet Exiv2 (_utilisé par darktable pour extraire les métadonnées EXIF/IPTC des fichiers RAW_) ont bloqué le support du ISOBMFF par crainte de poursuites. Rappelons qu'en l'absence de fondation, organisation ou entreprise, les développeurs open-source sont imputables sur leur patrimoine personnel en cas de poursuites pour violation de propriété intellectuelle ou industrielle. Ça peut refroidir, d'autant plus que Canon et les copains ont le budget pour attaquer, mais les développeurs (et leur famille…) n'ont par forcément le budget pour se défendre… Pendant ce temps, RawTherapee, basé sur la librairie Libraw, dont les développeurs se posent un peu moins de questions, supporte CR3 depuis déjà quelques années.

Les soucis légaux étant désormais écartés, les développeurs du projet Exiv2 ont finalement accepté de supporter les ISOBMFF, [dans une réunion en date du 9 janvier 2021.](https://github.com/Exiv2/exiv2/issues/1018#issuecomment-757979745) La feuille de route initiale est d'ajouter le support des CR3 dans Exiv2 pour le 28 février 2021, après quoi Roman Lebedev pourra inclure le support expérimental dans Rawspeed (_la librairie de décodage des fichers RAW de darktable_), pour le 31 mars 2021, et la date prévue pour le code stable est le 21 mai 2021. Les fondations du support des CR3 dans Exiv2 ont été posées [hier.](https://github.com/Exiv2/exiv2/pull/1458)

D'autre part, l'équipe de développement de darktable a décidé de continuer, comme en 2020, à publier 2 versions majeures de darktable par an, une en juin et l'autre en décembre. Seules ces versions majeures incluront les nouvelles fonctionnalités, les versions mineures incluant seulement des correctifs de bugs.

Si tout se goupille correctement, cela signifie donc un support des CR3 Canon au mieux dans darktable 3.6 en juin 2021 ou, au pire, dans darktable 3.8 en décembre 2021. Tout ceci étant, bien sûr, conditionnel et les dates indiquées ne sont pour l'instant que des orientations générales.

Les clients de Canon pourront remercier [Robin Mills](https://github.com/clanmills), ancien ingénieur Adobe ayant travaillé sur PostScript, et mainteneur du projet Exiv2 depuis 2012 qui, malgré ses 70 ans, a accepté de rempiler pour une dernière version d'Exiv2 incluant ISOBMFF avant de tirer sa révérence et de profiter d'une retraite bien méritée.
