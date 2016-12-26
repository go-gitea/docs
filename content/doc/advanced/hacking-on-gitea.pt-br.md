---
date: "2016-12-01T16:00:00+02:00"
title: "Hacking no Gitea"
slug: "hacking-no-gitea"
weight: 10
toc: false
draft: false
menu:
  sidebar:
    parent: "avancado"
    name: "Hacking no Gitea"
    weight: 10
    identifier: "hacking-no-gitea"
---

# Hacking no Gitea

Nós não iremos informar os conceitos básicos para configuração do [Golang](https://golang.org/) nesta documentação. Se você não sabe como configurar o ambiente para executar aplicações em Golang, você deve seguir a documentação oficial contendo as [instruções de instalação](https://golang.org/doc/install).

Se você quer contribuir com o Gitea você deve fazer o fork do repositório do projeto e fazer as implementações no branch `master`. There is a catch though, some internal packages are referenced by their GitHub URL.
So you have to trick the Go tool to think that you work on a clone of the official repository. Start by downloading the source code as you normally would:

```
go get -d code.gitea.io/gitea
```

Now it's time to fork the [Gitea repository](https://github.com/go-gitea/gitea) on GitHub, after that you should have to switch to the source directory on the command line:

```
cd $GOPATH/src/code.gitea.io/gitea
```

To be able to create pull requests you should add your forked repository as a remote to the Gitea sources, otherwise you can not apply the changes to our repository because of lacking write permissions:

```
git remote rename origin upstream
git remote add origin git@github.com:<USERNAME>/gitea.git
git fetch --all --prune
```

You've got a working development environment for Gitea now. Take a look at the `Makefile` to get an overview about the available tasks. The most common tasks should be `make test` which will start our test environment and `make build` which will build a `gitea` binary into your working directory. Writing test cases is not mandatory to contribute, but we will be happy if you do.

That’s it! You are ready to hack on Gitea. Test your changes, push them to your repository and open a pull request.

## Está faltando algo?

Está faltando algo nesta página? Então fique a vontade para nos informar em nosso [canal do Gitter](https://gitter.im/go-gitea/gitea/), lá iremos responder suas perguntas o mais breve possível.
