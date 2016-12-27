---
date: "2016-12-01T16:00:00+02:00"
title: "Instalação a partir de pacotes"
slug: "instalacao-a-partir-de-pacotes"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "instalacao"
    name: "A partir de pacotes"
    weight: 20
    identifier: "install-from-package"
---

# Instalação a partir de pacotes

## Linux

Nós ainda não publicamos nenhum pacote, iremos atualizar esta documentação quando iniciarmos a publicação de pacotes para qualquer distribuição Linux. Neste meio tempo, você pode seguir nosso guia para [instalação a partir do binário]({{< relref "from-binary.pt-br.md" >}}).

## Windows

Nós ainda não publicamos nenhum instalador para Windows, iremos atualizar esta documentação quando iniciarmos a publicação de qualquer instalador para Windows em formato `MSI` ou via [Chocolatey](https://chocolatey.org/), Neste meio tempo, você pode seguir nosso guia para [instalação a partir do binário]({{< relref "from-binary.pt-br.md" >}}).

## macOS

Atualmente nós suportamos somente instalação via `brew` no macOS. Se você não está usando [Homebrew](http://brew.sh/) você deve seguir nosso guia para [instalação a partir do binário]({{< relref "from-binary.pt-br.md" >}}). Para instalar o Gitea usando `brew`, é necessário executar os seguintes comandos:

```
brew tap go-gitea/gitea
brew install gitea
```

## Está faltando algo?

Está faltando algo nesta página? Então fique a vontade para nos informar em nosso [canal do Gitter](https://gitter.im/go-gitea/gitea/), lá iremos responder suas perguntas o mais breve possível.
