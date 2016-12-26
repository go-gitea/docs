---
date: "2016-12-01T16:00:00+02:00"
title: "Instalação a partir do código-fonte"
slug: "instalacao-a-partir-do-codigo-fonte"
weight: 10
toc: true
draft: false
menu:
  sidebar:
    parent: "instalacao"
    name: "A partir do código-fonte"
    weight: 30
    identifier: "instalacao-a-partir-do-codigo-fonte"
---

# Instalação a partir do código-fonte

Nós não iremos informar os conceitos básicos para configuração do [Golang](https://golang.org/) nesta documentação. Se você não sabe como configurar o ambiente para executar aplicações em Golang, você deve seguir a documentação oficial contendo as [instruções de instalação](https://golang.org/doc/install).

## Download

Antes de mais nada você deve fazer download do código-fonte, a forma mais fácil e simplesmente user o Golang para isto. Para isto, basta executar os comandos para buscar, fazer o download e acessar o código-fonte

```
go get -d -u code.gitea.io/gitea
cd $GOPATH/src/code.gitea.io/gitea
```

Agora será necessário decidir qual versão do Gitea você irá compilar e instalar. Atualmente existem várias opções para sua escolha. Se você quiser compilar e instalar a partir da branch `master` você pode ir diretamente para a [seção compilação](#compilação), este branch representa a versão atual de desenvolvimento e não é recomendado para uso em produção.

Se você quer fazer a compilação da última versão estável que contem as tags de versão em relação ao branch de desenvolvimento, você deve ver quais branches estão disponíves e fazer o checkout da branch desejada com os seguintes comandos:

```
git branch -a
git checkout v1.0
```

Por fim, mas não menos importante, você também pode compilar as versões como `v1.0.0`, Se você quer compilar a partir do código-fonte, esta é a maneira que nós sugerimos. Para usar as tags você deve ver quais tags estão disponíveis e fazer o checkout da tag desejada usando os seguintes comandos:

```
git tag -l
git checkout v1.0.0
```

## Compilação

Já que já agrupamos todas as bibliotecas necessárias para compilar o Gitea, você mesmo pode continuar com o processo. Nós providenciamos vários [comandos make](https://github.com/go-gitea/gitea/blob/master/Makefile) para manter o processo o mais simples quanto possível. Dependendo do que necessitar, você pode precisar adicionar várias tags para a compilação, então poderá escolher entre estas:

* `bindata`: Com esta tag você poderá incorporar todos os assets requiridos para executar uma instância do Gitea, tornando uma implementação bem fácil pois não será necessário se preocupar com qualquer arquivo adicional.
* `sqlite`: Com esta tag você poderá ativar suporte a banco de dados SQLite3, sendo recomendado somente para pequenas instalações do Gitea.
* `tidb`: Com esta tag você poderá ativar suporte a banco de dados TiDB, este é um simples banco de dados file-based comparável com o SQLite.
* `pam`: Com esta tag você poderá ativar suporte a PAM (Linux Pluggable Authentication Modules), sendo este útil se os usuários devem ser autenticados por meio de usuários já existentes no sistema Linux.

Agora é hora de compilar o arquivo binário, nos sugerimos a incorporação dos assets com a tag `bindata`, para incluir os assets você deve executar também o comando `generate`, senão os assets não serão preparados para ser incorporado:

```
TAGS="bindata" make generate build
```

## Teste

Depois de executar os passos acima você terá o arquivo `gitea` em sua pasta, primeiro você pode testar se está funcionando corretamente como o esperado e após isto você pode copiar ele para o destino aonde você desejar guardar. Quando você executar o Gitea manalmente em seu terminal você poderá interromper a execução executando o comando `Ctrl + C` no teclado.

```
./gitea web
```

## Está faltando algo?

Está faltando algo nesta página? Então fique a vontade para nos informar em nosso [canal do Gitter](https://gitter.im/go-gitea/gitea/), lá iremos responder suas perguntas o mais breve possível.
