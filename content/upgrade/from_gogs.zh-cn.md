---
date: "2016-12-01T16:00:00+02:00"
title: "从 Gogs 升级"
weight: 10
toc: true
draft: false
type: "docs"
menu:
  sidebar:
    parent: "upgrade"
    name: "从 Gogs 升级"
    weight: 30
    identifier: "upgrade-from-gogs"
---

# 从 Gogs 升级

如果你正在运行Gogs 0.9.99以下版本，你可以平滑的升级到Gitea。该升级需要如下的步骤：

* 停止 Gogs 的运行
* 拷贝 Gogs 的配置文件 `custom/conf/app.ini` 到 Gitea 的相应位置。如果你自己修改过templates目录，你需要手工合并你的修改到Gitea的templates目录下。
* 运行 Gitea
* 登陆 Gitea 并进入 管理面板, 运行 `重新生成 '.ssh/authorized_keys' 文件（警告：不是 Gitea 的密钥也会被删除）`
   和 `重新生成所有仓库的 Update 钩子（用于自定义配置文件被修改）`。

## TBD
