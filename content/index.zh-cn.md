---
date: "2016-11-08T16:00:00+02:00"
title: "文档"
weight: 10
toc: true
draft: false
type: "default"
---

# 关于Gitea

Gitea 是一个自己托管的Git服务程序。他和GitHub, Bitbucket or Gitlab等比较类似。他是从 [Gogs](http://gogs.io) 发展而来，不过我们已经Fork并且命名为Gitea。对于我们Fork的原因可以看 [这里](https://blog.gitea.io/welcome-to-gitea/)。

## 目标

Gitea的首要目标是创建一个极易安装，运行非常快速，安装和使用体验良好的自建 Git 服务。我们采用Go作为后端语言，这使我们只要生成一个可执行程序即可。并且他还支持跨平台，支持 Linux, macOS 和 Windows 以及各种架构，除了x86，amd64，还包括 ARM 和 PowerPC。

## 组件

* Web框架： [Macaron](http://go-macaron.com/)
* ORM： [XORM](https://github.com/go-xorm/xorm)
* UI组件：
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
* 数据库驱动：
  * [github.com/go-sql-driver/mysql](https://github.com/go-sql-driver/mysql)
  * [github.com/lib/pq](https://github.com/lib/pq)
  * [github.com/mattn/go-sqlite3](https://github.com/mattn/go-sqlite3)
  * [github.com/pingcap/tidb](https://github.com/pingcap/tidb)
