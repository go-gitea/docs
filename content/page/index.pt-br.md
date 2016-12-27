---
date: "2016-11-08T16:00:00+02:00"
title: "Documentação"
slug: "documentacao"
weight: 10
toc: true
draft: false
---

# O que é o Gitea?

Gitea é um serviço de git hospedável e amigável. Você pode comparar ele com GitHub, Bitbucket ou Gitlab. O desenvolvimento inicial foi realizado no [Gogs](http://gogs.io) porém nós fizemos o fork e nomeamos como Gitea. Se você deseja ler mais sobre os motivos porque fizemos isto, por favor leia [este post](https://blog.gitea.io/2016/12/welcome-to-gitea/) em nosso blog.

## Objetivo

O objetivo deste projeto é prover da forma mais fácil, rápida e simples possível um serviço de Git hospedável. Com o [Go](https://golang.org/), isto pode ser feito com uma distribuição binária independente em TODAS as plataformas suportadas pelo Go, incluindo Linux, MacOS e Windows, e até mesmo em arquiteturas como ARM ou PowerPC.

## Componentes

* Framework Web: [Macaron](http://go-macaron.com/)
* ORM: [XORM](https://github.com/go-xorm/xorm)
* Componentes UI:
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
