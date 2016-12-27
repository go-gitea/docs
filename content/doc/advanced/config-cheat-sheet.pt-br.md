---
date: "2016-12-26T16:00:00+02:00"
title: "Configuração"
slug: "configuracao"
weight: 20
toc: false
draft: false
menu:
  sidebar:
    parent: "avancado"
    name: "Configuração"
    weight: 20
    identifier: "configuracao"
---

# Configuração

Esta é uma lista de parâmetros de configuração do Gitea, sendo útil para compreender melhor todos os recursos do Gitea.

Antes de começar, certifique-se de que qualquer alteração deve ser feita em `custom/conf/app.ini` ao qualquer local correspondente.

Todas as configurações padrão podem ser encontradas em [app.ini](https://github.com/go-gitea/gitea/blob/master/conf/app.ini). Se você ver qualquer coisa parecida com `%(X)s`, este é um recurso provido pelo [ini](https://github.com/go-ini/ini/#recursive-values) para leitura de valores recursivamente.

Qualquer configuração que esteja marcado com :exclamation: significa que você deve manter o valor padrão, a menos que você entenda perfeitamente o que está fazendo.

## Geral

- `APP_NAME`: Nome da aplicação, altere para qualquer um que desejar.
- `RUN_USER`: Usuário que está executando o Gitea, nós recomandamos que seja `git`; porém, altere isto para qualquer usuário se este está executando o Gitea em seu ambiente. Gitea pdoerá falhar se este valor não estiver definido corretamente.
- `RUN_MODE`: Para desempenho e outros relacionados, altere este para `prod` quando estiver implementado em um ambiente de produção. O processo de instalação irá definir este para `prod` automaticamente.

## Repositório (`repository`)

- `ROOT`: Pasta root para armazenar todos os repositórios dos usuários. Deve ser uma pasta absoluta. O padrão é `~/<username>/gitea-repositories`.
- `SCRIPT_TYPE`: Interpretador de comandos suportado pelo servidor, normalmente é o `bash`, mas alguns usuários informam que seus servidores suportam somente `sh`.
- `ANSI_CHARSET`: Charset padrão para um charset desconhecido.
- `FORCE_PRIVATE`: Força todos os repositórios ser privados.
- `MAX_CREATION_LIMIT`: Limite global máximo para repositórios que o usuário pode criar, `-1` significa nenhum limite.
- `PULL_REQUEST_QUEUE_LENGTH`:exclamation:: Quantidade de pull requests na fila de teste, defina este com o maior possível.

## UI (`ui`)

- `EXPLORE_PAGING_NUM`: Número de repositórios exibidos em uma página.
- `ISSUE_PAGING_NUM`: Número máximo de issues exibidos em uma única página (para todas as páginas que exibem issues).
- `FEED_MAX_COMMIT_NUM`: Número máximo de commits exibidos no feed de atividades.

### UI - Admin (`ui.admin`)

- `USER_PAGING_NUM`: Número de usuários exibidos na em uma página.
- `REPO_PAGING_NUM`: Número de repositórios exibidos em uma página.
- `NOTICE_PAGING_NUM`: Número de notices exibidos em uma página.
- `ORG_PAGING_NUM`: Número de organizações exibidos em uma página.

## Markdown (`markdown`)

- `ENABLE_HARD_LINE_BREAK`: Delimitador de ter ou não quebra de linha.

## Servidor (`server`)

- `PROTOCOL`: `http` ou `https`.
- `DOMAIN`: Domínio do seu servidor.
- `ROOT_URL`: Endereço absoluto da url pública do servidor Gitea.
- `HTTP_ADDR`: Endereço de escuta HTTP.
- `HTTP_PORT`: Porta de escuta HTTP.
- `DISABLE_SSH`: Desativa o recurso de SSH quando este não está disponível.
- `START_SSH_SERVER`: Inicia o servidor SSH embutido quando ativado.
- `SSH_PORT`: Porta SSH, caso não seja a porta `22`.
- `OFFLINE_MODE`: Desativa o uso de CDN para arquivos estáticos e Gravatar para imagens de avatar.
- `DISABLE_ROUTER_LOG`: Desativa a exibição de log do router.
- `CERT_FILE`: Arquivo do certificado usado para HTTPS.
- `KEY_FILE`: Arquivo da chave usado para HTTPS.
- `STATIC_ROOT_PATH`: Upper level of template and static files path, default is the path where Gitea is located.
- `ENABLE_GZIP`: Ativa suporte GZIP em nível de aplicação.
- `LANDING_PAGE`: Página inicial para usuários não logados, `home` ou `explore`.

## Banco de dados (`database`)

- `DB_TYPE`: Banco de dados escolhido, `mysql`, `postgres` ou `sqlite3`.
- `HOST`: Endereço e porta do banco de dados.
- `NAME`: Nome do banco de dados.
- `USER`: Usuário do banco de dados.
- `PASSWD`: Senha do usuário do banco de dados.
- `SSL_MODE`: Somente rara PostgreSQL.
- `PATH`: Somente para SQLite3, pasta do arquivo de banco de dados.

## Segurança (`security`)

- `INSTALL_LOCK`: Indica se a página de instalação deve ser aberta (a configuração da conta de admintrador está envolvida, por conta disto é um valor importante).
- `SECRET_KEY`: Chave secreta global para a segurança do seu servidor, **É preferível mudar** (será gerado uma chave aleatória sempre que você instalar).
- `LOGIN_REMEMBER_DAYS`: Tempo de vida do Cookie em dias.
- `COOKIE_USERNAME`: Nome do cookie que salva o nome de usuário.
- `COOKIE_REMEMBER_NAME`: Nome do cookie que salva a informação de autologin.
- `REVERSE_PROXY_AUTHENTICATION_USER`: Header name for reverse proxy authentication username.

## Serviço (`service`)

- `ACTIVE_CODE_LIVE_MINUTES`: The minutes of active code life time.
- `RESET_PASSWD_CODE_LIVE_MINUTES`: The minutes of reset password code life time.
- `REGISTER_EMAIL_CONFIRM`: Enable this to ask for mail confirmation of registration, requires `Mailer` to be enabled.
- `DISABLE_REGISTRATION`: Disable registration, after which only admin can create accounts for users.
- `SHOW_REGISTRATION_BUTTON`: Indicate whether to show registration button or not.
- `REQUIRE_SIGNIN_VIEW`: Enable this to force users to log in to view any page.
- `ENABLE_CACHE_AVATAR`: Enable this to cache avatar from Gravatar.
- `ENABLE_NOTIFY_MAIL`: Enable this to send e-mail to watchers of repository when something happens like creating issues, requires `Mailer` to be enabled.
- `ENABLE_REVERSE_PROXY_AUTHENTICATION`: Enable this to allow reverse proxy authentication, more detail: https://github.com/gogits/gogs/issues/165
- `ENABLE_REVERSE_PROXY_AUTO_REGISTRATION`: Enable this to allow auto-registration for reverse authentication.
- `DISABLE_MINIMUM_KEY_SIZE_CHECK`: Do not check minimum key size with corresponding type.
- `ENABLE_CAPTCHA`: Ative este para usar a validação por captcha para registro.

## Webhook (`webhook`)

- `QUEUE_LENGTH`:exclamation:: Hook task queue length.
- `DELIVER_TIMEOUT`: Delivery timeout in seconds for shooting webhooks.
- `SKIP_TLS_VERIFY`: Indicate whether to allow insecure certification or not.
- `PAGING_NUM`: Number of webhook history that are shown in one page.

## E-mail (`mailer`)

- `ENABLED`: Ative este para usar um serviço de e-mail.
- `DISABLE_HELO`: Desativar operação HELO.
- `HELO_HOSTNAME`: Custom hostname for HELO operation.
- `HOST`: SMTP mail host address and port (example: smtp.gitea.io:587).
- `FROM`: Mail from address, RFC 5322. This can be just an email address, or the "Name" \<email@example.com\> format.
- `USER`: Username of mailer (usually just your e-mail address).
- `PASSWD`: Password of mailer.
- `SKIP_VERIFY`: Do not verify the self-signed certificates.

Note: Actually, Gitea supports only SMTP with STARTTLS.

## Cache (`cache`)

- `ADAPTER`: Cache engine adapter, either `memory`, `redis`, or `memcache`. If you want to use `redis` or `memcache`, be sure to rebuild everything with build tags `redis` or `memcache`: `go build -tags='redis'`.
- `INTERVAL`: for memory cache only, GC interval in seconds.
- `HOST`: For redis and memcache, the host address and port number.
    - Redis: `network=tcp,addr=127.0.0.1:6379,password=macaron,db=0,pool_size=100,idle_timeout=180`
    - Memache: `127.0.0.1:9090;127.0.0.1:9091`

## Sessão (`session`)

- `PROVIDER`: Session engine provider, either `memory`, `file`, `redis`, or `mysql`.
- `PROVIDER_CONFIG`: For file, it's the root path; for others, it's the host address and port number.
- `COOKIE_SECURE`: Enable this to force using HTTPS for all session access.
- `GC_INTERVAL_TIME`: GC interval in seconds.

## Imagem (`picture`)

- `GRAVATAR_SOURCE`: Can be `gravatar`, `duoshuo` or anything like `http://cn.gravatar.com/avatar/`.
- `DISABLE_GRAVATAR`: Enable this to use local avatars only.
- `ENABLE_FEDERATED_AVATAR`: Enable support for federated avatars (see http://www.libravatar.org)

## Anexos (`attachment`)

- `ENABLED`: Enable this to allow users upload attachments.
- `PATH`: Path to store attachments.
- `ALLOWED_TYPES`: Allowed MIME types, e.g. `image/jpeg|image/png`, use `*/*` for all types.
- `MAX_SIZE`: Maximum size in MB, e.g. `4`
- `MAX_FILES`: Maximum number of attachments can be uploaded at once, e.g. `5`.

## Log (`log`)

- `ROOT_PATH`: Root path for log files.
- `MODE`: Logging mode, default is `console`. For multiple modes, use comma to separate it.
- `LEVEL`: General log level, default is `Trace`.

## Cron (`cron`)

- `ENABLED`: Enable this to run cron tasks periodically.
- `RUN_AT_START`: Enable this to run cron tasks at start time.

### Cron - Atualização de Mirrors (`cron.update_mirrors`)

- `SCHEDULE`: Cron syntax for scheduling update mirrors, e.g. `@every 1h`.

### Cron - Checagem de saúde do repositório (`cron.repo_health_check`)

- `SCHEDULE`: Cron syntax for scheduling repository health check, e.g. `@every 24h`.
- `TIMEOUT`: Time duration syntax for health check execution timeout, e.g. `60s`.
- `ARGS`: Arguments for command `git fsck`, e.g. `--unreachable --tags`.

### Cron - Checagem de estatísticas do repositório (`cron.check_repo_stats`)

- `RUN_AT_START`: Enable this to run repository statistics check at start time.
- `SCHEDULE`: Cron syntax for scheduling repository statistics check, e.g. `@every 24h`.

## Git (`git`)

- `MAX_GIT_DIFF_LINES`: Max number of lines allowed of a single file in diff view.
- `MAX_GIT_DIFF_LINE_CHARACTERS`: Max number of characters of a line allowed in diff view.
- `MAX_GIT_DIFF_FILES`: Max number of files shown in diff view.
- `GC_ARGS`: Arguments for command `git gc`, e.g. `--aggressive --auto`.

## Outros (`other`)

- `SHOW_FOOTER_BRANDING`: Enable this to show Gitea branding in the footer.
- `SHOW_FOOTER_VERSION`: Enable this to show Gitea version information in the footer.

## Está faltando algo?

Está faltando algo nesta página? Então fique a vontade para nos informar em nosso [canal do Gitter](https://gitter.im/go-gitea/gitea/), lá iremos responder suas perguntas o mais breve possível.
