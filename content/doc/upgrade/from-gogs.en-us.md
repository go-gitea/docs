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

If you are running Gogs version 0.9.113 or older, you can upgrade Gogs to Gitea smoothly. There are some steps to do below. Make sure to complete as the gitea user in ~:

* Stop Gogs
* cd ~
* Download your platform specific binary from: https://dl.gitea.io/gitea/1.0.0/
* cp -r gogs gitea
* The custom folder still applies for Gitea, just move gogs/custom/conf (not gogs/custom/conf/app.ini) to gitea/custom/options, this is used to override gitignores, labels, licenses, locales or readmes.
* cp -r gogs-repositories/ gitea-repositories  (this preserves your data in case something goes wrong, it can be deleted once Gitea is verified working) 
* cp -r gogs-data/ gitea-data/ (this preserves your data in case something goes wrong, it can be deleted once Gitea is verified working)
* vim gitea/custom/conf/app.ini (Change gogs specific information:)
* [database]
* PATH = /home/:USER/gogs/data/:DATABASE.db
* [attachment]
* PATH = /home/:USER/gogs-data/attachments
* [picture]
* AVATAR_UPLOAD_PATH = /home/:USER/gogs-data/avatars
* [log]
* ROOT_PATH = /home/:USER/gogs/log
*
* [database]
* PATH = /home/:USER/gitea/data/:DATABASE.db
* [attachment]
* PATH = /home/:USER/gitea-data/attachments
* [picture]
* AVATAR_UPLOAD_PATH = /home/:USER/gitea-data/avatars
* [log]
* ROOT_PATH = /home/:USER/gitea/log
*
* Verify working by running gitea
* 
* ~/gitea/gitea web
* Enter Gitea admin panel on the UI, run `Rewrite '.ssh/authorized_keys' file` (caution: non-Gitea keys will be lost) and `Rewrite all update hook of repositories` (needed when custom config path is changed).
*
* To update your startup script refer to https://github.com/go-gitea/gitea/tree/master/scripts , these files are not included with the binary on https://dl.gitea.io.
