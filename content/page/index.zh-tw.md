---
date: "2016-11-08T16:00:00+02:00"
title: "文件"
slug: "documentation"
weight: 10
toc: true
draft: false
---

# 關於 Gitea

Gitea 是一個可自行託管的 Git 服務。你可以拿 GitHub, Bitbucket 或 Gitlab 來比較看看。初期是從 [Gogs](http://gogs.io) 發展而來，不過我們已經 Fork 並且命名為 Gitea。如果您想更深入了解 Fork 原因，請直接參考[這裡](https://blog.gitea.io/2016/12/welcome-to-gitea/)。

## 目標

Gitea 的首要目標是建立一個容易安裝，運行快速，安装和使用體驗良好的自建 Git 服務。我們採用 GO 為後端語言，Go 可以產生各平台使用的執行檔。除了支援 Linux, macOS 和 Windows 外，甚至還包含 ARM 和 PowerPC。

## 组件

* Web 框架： [Macaron](http://go-macaron.com/)
* ORM： [XORM](https://github.com/go-xorm/xorm)
* UI 組件：
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
* 資料庫：
  * [github.com/go-sql-driver/mysql](https://github.com/go-sql-driver/mysql)
  * [github.com/lib/pq](https://github.com/lib/pq)
  * [github.com/mattn/go-sqlite3](https://github.com/mattn/go-sqlite3)
  * [github.com/pingcap/tidb](https://github.com/pingcap/tidb)
