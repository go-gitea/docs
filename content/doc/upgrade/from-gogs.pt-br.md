---
date: "2016-12-01T16:00:00+02:00"
title: "Atualização a partir do Gogs"
slug: "atualizacao-a-partir-do-gogs"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "atualizacao"
    name: "A partir do Gogs"
    weight: 10
    identifier: "atualizacao-a-partir-do-gogs"
---

# Atualização a partir do Gogs

Se você estiver executando o Gogs cuja versão esteja abaixo de 0.9.99, você pode atualizar do Gogs para o Gitea sem problemas. Para isto, algumas etapas seguintes devem ser seguidas:

* Pare a execução do Gogs
* Copie as configurações do Gogs `custom/conf/app.ini` para o Gitea.
* Se você tiver mais coisas na pasta `custom/`, como templates personalizados ou traduções, você deve fazer o merge manualmente com cuidado pois estes arquivos foram alterados no Gitea.
* Copie a pasta `data/` do Gogs para o Gitea. Ele contém arquivos das issues e avatares.
* Execute o Gitea
* Entre no painel de administração do Gitea no navegador, execute `Reescrever o arquivo '.ssh/authorized_keys' (atenção: chaves que não sejam do Gitea serão perdidas)` (ou `Rewrite '.ssh/authorized_keys' file (caution: non-Gitea keys will be lost)` caso esteja executando o Gitea em inglês)
* Execute também `Reescrever todos os hooks de atualização dos repositórios (necessário quando o caminho de configuração customizado é alterado)` (ou `Rewrite all update hook of repositories (needed when custom config path is changed)` caso esteja executando o Gitea em inglês).

## Está faltando algo?

Está faltando algo nesta página? Então fique a vontade para nos informar em nosso [canal do Gitter](https://gitter.im/go-gitea/gitea/), lá iremos responder suas perguntas o mais breve possível.
