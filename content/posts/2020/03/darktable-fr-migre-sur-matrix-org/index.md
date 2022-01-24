---
title: "darktable-fr migre sur Matrix.org"
date: "2020-03-13"
categories: 
  - "actualites"
---

Si vous avez bien suivi darktable-fr depuis le début, vous savez que son chat a déjà connu une transhumance, de Telegram à Mattermost (hébergé sur [framateam.org](https://framateam.org)). On est en train de quitter Mattermost pour Matrix. L'identifiant de la communauté est +darktable.fr:matrix.org, et vous pouvez y accéder depuis un [navigateur web via l'application Riot](https://riot.im/app/#/group/+darktable.fr:matrix.org).

## Un chat pour quoi faire ?

Idéalement, [le forum](http://forums.darktable.fr) servirait à la fois de lieu d'entraide **et** de base de connaissances, à laquelle les utilisateurs pourraient se référer dans le futur pour régler des problèmes ou des incompréhensions déjà évoqués et résolus dans le passé. En pratique, vu qu'on répète sensiblement les même choses de semaine en semaine depuis 2016, on peut dire que c'est un échec pour la base de connaissance, et pour discuter, suivant qui répond dans quel ordre, on peut aboutir à des incompréhensions qui font le charme (ou pas) des communications en différé à plusieurs.

Donc, le chat, c'est un espace de discussion instantanée de groupe, qui permet non seulement d'avoir une réponse plus rapide la plupart du temps, mais aussi d'avoir un mode d'interaction plus naturel et spontané. Sur le chat Framateam de darktable-fr, jusqu'à présent, vous trouviez notamment Pascal Obry, Rawfiner, Aldric Renaudin/AlicVB, Nicolas Auffray/Nilvus et moi-même, soit 5 des principaux développeurs de darktable 2.6 et 3.0. (Même Adobe n'a pas un tel support utilisateur.)

En ce qui me concerne, j'assure une permanence le samedi, de midi à environ 22h (par intermittence), sur le canal [Aide](https://riot.im/app/#/room/#aide_darktablefr:matrix.org) afin de conseiller les utilisateurs et de répondre à leurs questions, non seulement sur l'utilisation de darktable, mais aussi plus généralement sur le traitement de photo numériques, ses bonnes et ses moins bonnes pratiques. C'est une composante importante de [mon travail](https://liberapay.com/aurelienpierre/), parce qu'interagir directement avec les utilisateurs m'aide à comprendre comment ils comprennent, et donc à pouvoir apporter les modifications qui s'imposent (dans la documentation ou dans le logiciel).

## Pourquoi Framateam, c'est plus ce que c'était ?

Framateam est un service gratuit de l'association [Framasoft](https://framasoft.org/fr/) qui met à disposition un serveur hébergeant une instance de [Mattermost](https://mattermost.org/), un genre de clone libre de Slack. Ça permet de créer une « équipe » qui va discuter sur des canaux publics, privés ou en messages privés, mais ça pose deux problèmes :

1. Framateam limite le nombre de membres d'une équipe à 175, et on l'a atteint,
2. Framasoft est [graduellement en train de déframatiser internet](https://framablog.org/2019/09/24/deframasoftisons-internet/), et va progressivement fermer Framateam à partir de 2021 _(si l'humanité n'a pas été anéantie par le virus du chikungunya aviaire respiratoire aigu d'ici là)_.

Donc, de toute façon, il va falloir quitter Framateam avant 2 ans dans le meilleur des cas.

## Pourquoi Matrix, c'est cool ?

D'abord, [Matrix](https://matrix.org/) est un protocole de communication crypté de bout en bout (si vous le souhaitez), libre, opensource, décentralisé (en tout cas, décentralisable), fédéré et respectueux de votre vie privée. Ça on aime.

Ensuite, il permet le chat textuel, mais aussi les appels audio et vidéo (VoIP) directement depuis votre navigateur web, via Matrix/WebRTC directement, ou via un widget [Jitsi](https://jitsi.org/jitsi-meet/). Le canal [Aide](https://riot.im/app/#/room/#aide_darktablefr:matrix.org) est donc muni d'un chat vidéo de groupe qui permettra, notamment, de faire du partage d'écran en équipe pour expliquer darktable.

Enfin, il possède de nombreux relais robotisés qui permettent de connecter un canal Matrix à Telegram, Mattermost, Slack, IRC, Github et autres chats et flux RSS, tout en continuant à les utiliser normalement (en lecture et en écriture). Ça permet de rediriger pas mal de choses sur Matrix et d'éviter de se perdre dans 45 services différents.

Pour utiliser Matrix (qui n'est donc qu'un protocole), il faut donc se connecter à un serveur Matrix (qui sert de relai) via une application client (qui permet d'envoyer et de recevoir les messages). Le principal serveur est l'officiel matrix.org, sinon vous pouvez chercher des [serveurs tiers](https://matrix.org/docs/projects/hosting) ou créer le vôtre pour décentraliser. La principale application se nomme [Riot](https://about.riot.im/), elle a une [interface web](https://riot.im/app/#/), une [application Android](https://play.google.com/store/apps/details?id=im.vector.app), une [application iOS](https://itunes.apple.com/us/app/vector.im/id1083446067), et des applications de bureau pour [Windows, Mac et Linux,](https://riot.im/download/desktop/) mais toutes ces applications ne sont en réalité que l'application web encapsulée dans un mini navigateur, qui a tendance a être gourmande, donc n'encombrez pas votre terminal avec ça.

Si vous n'avez rien compris à ce que je viens de raconter, [visitez ce lien](https://riot.im/app/#/group/+darktable.fr:matrix.org), cliquez sur « Rejoindre cette communauté », puis inscrivez vous à l'invitation du site.

On se retrouve là-bas ?
