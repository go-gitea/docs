---
date: "2016-12-01T16:00:00+02:00"
title: "Instalação com Docker"
slug: "instalacao-com-docker"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "instalacao"
    name: "Com Docker"
    weight: 10
    identifier: "instalacao-com-docker"
---

# Instalação com Docker

Nós providenciamos automaticamente imagens de Docker atualizadas dentro da nossa organização de Hub Docker. It is up to you and your deployment to always use the latest stable tag or to use another service that updates the Docker image for you. Antes de tudo você deve simplesmente fazer o pull do container Docker:

```
docker pull gitea/gitea:latest
```

Para manter seus repositórios e alguns outros dados persistentes, você deve criar um diretório para armanezar esses dados no futuro.

```
sudo mkdir -p /var/lib/gitea
```

Agora é hora de iniciar o container docker, este processo é bem simples. Você precisa definir o mapeamento da porta e também o caminho da pasta para os repositórios e os dados persistentes:

```
docker run -d --name=gitea -p 10022:22 -p 10080:3000 -v /var/lib/gitea:/data gitea/gitea:latest
```

Agora você deve ter uma instância em execução de Gitea, para acessar em seu navegador, basta acessar o endereço http://hostname:10080, Se você quiser fazer o clone dos repositórios você pode fazer com o comando `git clone ssh://git@hostname:10022/username/repo.git`.

## Está faltando algo?

Está faltando algo nesta página? Então fique a vontade para nos informar em nosso [canal do Gitter](https://gitter.im/go-gitea/gitea/), lá iremos responder suas perguntas o mais breve possível.
