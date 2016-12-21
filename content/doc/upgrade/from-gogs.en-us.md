---
date: "2016-12-01T16:00:00+02:00"
title: "Upgrade from Gogs"
slug: "upgrade-from-gogs"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "upgrade"
    name: "From Gogs"
    weight: 10
    identifier: "upgrade-from-gogs"
---

# Upgrade from Gogs

If you are running Gogs which version is below 0.9.99, you can upgrade Gogs to Gitea smoothly. There are some steps to do below:

* Stop Gogs
* Copy Gogs `custom/conf/app.ini` to Gitea.
* If you have more custom content on `custom/` folder, like templates or localization files, you should carrefully merge manually because these files changed on Gitea.
* Copy `data/` folder from Gogs to Gitea. It contains issue attachments and avatars.
* Run Gitea
* Enter Gitea admin panel on the UI, run `Rewrite '.ssh/authorized_keys' file` (caution: non-Gitea keys will be lost) and `Rewrite all update hook of repositories` (needed when custom config path is changed).

## TBD
