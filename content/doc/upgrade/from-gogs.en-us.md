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

If you are running Gogs which version is below 0.9.99, you can upgrade Gogs to Gitea smoothly. There are some steps to do below. Make sure to complete as the gitea user in ~:

* Stop Gogs
* cd ~
* wget https://github.com/go-gitea/gitea/archive/v1.0.0.zip
* unzip v1.0.0.zip
* cp -r gogs gitea
* If you have custom content migrated from gogs/custom/ folder, like templates or localization files, you should manually merge these because these files changed on Gitea.
* cp -r gitea-v1.0.0/options gitea/options
* cp -r gogs-repositories/ gitea-repositories
* cp -r gogs-data/ gitea-data/
* vim gitea/custom/conf/app.ini

Change gogs specific information:

FROM:
* [database]
* PATH = /home/:USER/gogs/data/:DATABASE.db
* [attachment]
* PATH = /home/:USER/gogs-data/attachments
* [picture]
* AVATAR_UPLOAD_PATH = /home/:USER/gogs-data/avatars
* [log]
* ROOT_PATH = /home/:USER/gogs/log

TO:
* [database]
* PATH = /home/:USER/gitea/data/:DATABASE.db
* [attachment]
* PATH = /home/:USER/gitea-data/attachments
* [picture]
* AVATAR_UPLOAD_PATH = /home/:USER/gitea-data/avatars
* [log]
* ROOT_PATH = /home/:USER/gitea/log

Verify working by running gitea

* ~/gitea/gitea web
* Enter Gitea admin panel on the UI, run `Rewrite '.ssh/authorized_keys' file` (caution: non-Gitea keys will be lost) and `Rewrite all update hook of repositories` (needed when custom config path is changed).

Update the gitea-v1.0.0/scripts file for your specific distro and environment then copy.
