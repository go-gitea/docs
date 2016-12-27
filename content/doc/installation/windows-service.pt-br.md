---
date: "2016-12-21T15:00:00-02:00"
title: "Registrar como um serviço do Windows"
slug: "registrar-como-um-servico-do-windows"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "instalacao"
    name: "Serviço do Windows"
    weight: 30
    identifier: "registrar-como-um-servico-do-windows"
---

# Registrar como um serviço do Windows

Para registrar o Gitea como um serviço do windows, primeiro execute `cmd` como administrador e execute os seguintes comandos:

```
sc create gitea start= auto binPath= ""C:\gitea\gitea.exe" web --config "C:\gitea\custom\conf\app.ini""
```

Não se esqueça de substituir `C:\gitea` pela pasta onde o Gitea está presente.

Após isto, abra o "Serviços do Windows" ("Windows Services"), procure pelo serviço com nome "gitea", clique com o botão direto do mouse e clique en "Executar" ("Run"). Se tudo estiver OK e o serviço iniciar, você poderá abrir o Gitea em `http://localhost:3000` (ou na porta que foi configurada, caso diferente de 3000).

## Remover o serviço

Para remover o serviço do Gitea, execute `cmd` como administrador e execute:

```
sc remove gitea
```

## Está faltando algo?

Está faltando algo nesta página? Então fique a vontade para nos informar em nosso [canal do Gitter](https://gitter.im/go-gitea/gitea/), lá iremos responder suas perguntas o mais breve possível.
