---
date: "2016-11-08T16:00:00+02:00"
title: "Documentation"
slug: "documentation"
weight: 10
toc: true
draft: false
---

# What is Gitea?

Gitea is a painless self-hosted Git service. You can compare it with GitHub, Bitbucket or Gitlab. The initial development have been done on [Gogs](http://gogs.io) but we have forked it and named it Gitea. If you want to read more about the reasons why we have done that please read [this](https://blog.gitea.io/2016/12/welcome-to-gitea/) blog post.

## Purpose

The goal of this project is to make the easiest, fastest, and most painless way of setting up a self-hosted Git service. With Go, this can be done with an independent binary distribution across ALL platforms that Go supports, including Linux, macOS and Windows, even on architectures like ARM or PowerPC.

## Features

- Activity timeline
- SSH and HTTP/HTTPS protocols
- SMTP/LDAP/Reverse proxy authentication
- Reverse proxy with sub-path
- Account/Organization/Repository management
- Add/Remove repository collaborators
- Repository/Organization webhooks (including Slack)
- Repository Git hooks/deploy keys
- Repository issues, pull requests and wiki
- Migrate and mirror repository and its wiki
- Web editor for repository files and wiki
- Gravatar and Federated avatar with custom source
- Mail service
- Administration panel
- Supports MySQL, PostgreSQL, SQLite3 and [TiDB](https://github.com/pingcap/tidb) (experimental)
- Multi-language support ([21 languages](https://github.com/go-gitea/gitea/tree/master/options/locale))

## System Requirements

- A cheap Raspberry Pi is powerful enough for basic functionality.
- 2 CPU cores and 1GB RAM would be the baseline for teamwork.
- Gitea is supposed to be run with a dedicated non-root user account on UNIX systems, no other mode of operation is supported. (**NOTE**: in case you run it with your own user account and the built-in SSH server disabled, Gitea modifies the `~/.ssh/authorized_keys` file so you will **not** be able to interactively log in.)

## Browser Support

- Please see [Semantic UI](https://github.com/Semantic-Org/Semantic-UI#browser-support) for specific versions of supported browsers.
- The official support minimal size  is **1024*768**, UI may still looks right in smaller size but no promises and fixes.

## Components

* Web framework: [Macaron](http://go-macaron.com/)
* ORM: [XORM](https://github.com/go-xorm/xorm)
* UI components:
  * [Semantic UI](http://semantic-ui.com/)
  * [GitHub Octicons](https://octicons.github.com/)
  * [Font Awesome](http://fontawesome.io/)
  * [DropzoneJS](http://www.dropzonejs.com/)
  * [Highlight](https://highlightjs.org/)
  * [Clipboard](https://zenorocha.github.io/clipboard.js/)
  * [Emojify](https://github.com/Ranks/emojify.js)
  * [CodeMirror](https://codemirror.net/)
  * [jQuery Date Time Picker](https://github.com/xdan/datetimepicker)
  * [jQuery MiniColors](https://github.com/claviska/jquery-minicolors)
* Database drivers:
  * [github.com/go-sql-driver/mysql](https://github.com/go-sql-driver/mysql)
  * [github.com/lib/pq](https://github.com/lib/pq)
  * [github.com/mattn/go-sqlite3](https://github.com/mattn/go-sqlite3)
  * [github.com/pingcap/tidb](https://github.com/pingcap/tidb)

## Software and Service Support

- [Drone](https://github.com/drone/drone) (CI)