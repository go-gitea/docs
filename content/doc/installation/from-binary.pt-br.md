---
date: "2016-12-01T16:00:00+02:00"
title: "Instalação a partir do binário"
slug: "instalacao-a-partir-do-binario"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "instalacao"
    name: "A partir do binário"
    weight: 20
    identifier: "instalacao-a-partir-do-binario"
---

# Instalação a partir do binário

Todos os downloads vem com suporte a SQLite, MySQL e PostgreSQL e são compilados com os assets incorporados. Tenha em mente que isso pode tornar diferente em relação as versões anteriores. A instalação usando arquivos binários é bem simples, basta selecionar o arquivo de acordo com a sua plataforma na [página de downloads](https://dl.gitea.io/gitea), copiar o endereço e substituir o endereço no comando abaixo:

```
wget -O gitea https://dl.gitea.io/gitea/v1.0.0/gitea-v1.0.0-linux-amd64
chmod +x gitea
```

## Teste

Depois de executar os passos acima você terá o arquivo `gitea` em sua pasta, primeiro você pode testar se está funcionando corretamente como o esperado e após isto você pode copiar ele para o destino aonde você desejar guardar. Quando você executar o Gitea manalmente em seu terminal você poderá interromper a execução executando o comando `Ctrl + C` no teclado.

```
./gitea web
```

## Está faltando algo?

Está faltando algo nesta página? Então fique a vontade para nos informar em nosso [canal do Gitter](https://gitter.im/go-gitea/gitea/), lá iremos responder suas perguntas o mais breve possível.
