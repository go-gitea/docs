---
date: "2016-12-26T16:00:00+02:00"
title: "配置说明"
slug: "config-cheat-sheet"
weight: 20
toc: false
draft: false
menu:
  sidebar:
    parent: "advanced"
    name: "配置说明"
    weight: 20
    identifier: "config-cheat-sheet"
---

# 配置说明

这是针对Gitea配置文件的说明，你可以了解Gitea的强大配置。需要说明的是，你的所有改变请修改 `custom/conf/app.ini` 文件而不是源文件。所有默认值可以通过 [app.ini.sample](https://github.com/go-gitea/gitea/blob/master/custom/conf/app.ini.sample) 查看到。如果你发现 `%(X)s` 这样的内容，请查看 [ini](https://github.com/go-ini/ini/#recursive-values) 这里的说明。标注了 :exclamation: 的配置项表明除非你真的理解这个配置项的意义，否则最好使用默认值。

## Overall (`DEFAULT`)

- `APP_NAME`: 应用名称，改成你希望的名字。
- `RUN_USER`: 运行Gitea的用户，推荐使用 `git`；如果在你自己的个人电脑使用改成你自己的用户名。如果设置不正确，Gitea可能崩溃。
- `RUN_MODE`: 从性能考虑，如果在产品级的服务上改成 `prod`。如果您使用安装向导安装的那么会自动设置为 `prod`。

## Repository (`repository`)

- `ROOT`: 存放git工程的根目录。这里必须填绝对路径，默认值是 `~/<username>/gitea-repositories`。
- `SCRIPT_TYPE`: 服务器支持的Shell类型，通常是 `bash`，但有些服务器也有可能是 `sh`。
- `ANSI_CHARSET`: 默认字符编码。
- `FORCE_PRIVATE`: 强制所有git工程必须私有。
- `MAX_CREATION_LIMIT`: 全局最大每个用户创建的git工程数目， `-1` 表示没限制。
- `PULL_REQUEST_QUEUE_LENGTH`: 小心：合并请求测试队列的长度，尽量放大。

## UI (`ui`)

- `EXPLORE_PAGING_NUM`: 探索页面每页显示的仓库数量。
- `ISSUE_PAGING_NUM`: 工单页面每页显示的工单数量。
- `FEED_MAX_COMMIT_NUM`: 活动流页面显示的最大提交树木。

### UI - Admin (`ui.admin`)

- `USER_PAGING_NUM`: 用户管理页面每页显示的用户数量。
- `REPO_PAGING_NUM`: 仓库管理页面每页显示的仓库数量。
- `NOTICE_PAGING_NUM`: 系统提示页面每页显示的提示数量。
- `ORG_PAGING_NUM`: 组织管理页面每页显示的组织数量。

## Markdown (`markdown`)

- `ENABLE_HARD_LINE_BREAK`: 是否启用硬换行扩展。

## Server (`server`)

- `PROTOCOL`: 可选 `http` 或 `https`。
- `DOMAIN`: 服务器域名。
- `ROOT_URL`: Gitea服务器的对外 URL。
- `HTTP_ADDR`: HTTP 监听地址。
- `HTTP_PORT`: HTTP 监听端口。
- `DISABLE_SSH`: 是否禁用SSH。
- `START_SSH_SERVER`: 是否启用内部SSH服务器。
- `SSH_PORT`: SSH端口，默认为 `22`。
- `OFFLINE_MODE`: 针对静态和头像文件禁用 CDN。
- `DISABLE_ROUTER_LOG`: 关闭日志中的路由日志。
- `CERT_FILE`: 启用HTTPS的证书文件。
- `KEY_FILE`: 启用HTTPS的密钥文件。
- `STATIC_ROOT_PATH`: 存放模板和静态文件的根目录，默认是 Gitea 的根目录。
- `ENABLE_GZIP`: 启用应用级别的 GZIP 压缩。
- `LANDING_PAGE`: 未登录用户的默认页面，可选 `home` 或 `explore`。
- `LFS_START_SERVER`: 是否启用 git-lfs 支持. 可以为 `true` 或 `false`， 默认是 `false`。
- `LFS_CONTENT_PATH`: 存放 lfs 命令上传的文件的地方，默认是 `data/lfs`。
- `LFS_JWT_SECRET`: LFS 认证密钥，改成自己的。

## Database (`database`)

- `DB_TYPE`: 数据库类型，可选 `mysql`, `postgres`, `mssql`, `tidb` 或 `sqlite3`。
- `HOST`: 数据库服务器地址和端口。
- `NAME`: 数据库名称。
- `USER`: 数据库用户名。
- `PASSWD`: 数据库用户密码。
- `SSL_MODE`: PostgreSQL数据库是否启用SSL模式。
- `PATH`: Tidb 或者 SQLite3 数据文件存放路径。

## Security (`security`)

- `INSTALL_LOCK`: 是否允许运行安装向导，(跟管理员账号有关，十分重要)。
- `SECRET_KEY`: 全局服务器安全密钥 **最好改成你自己的** (当你运行安装向导的时候会被设置为一个随机值)。
- `LOGIN_REMEMBER_DAYS`: Cookie 保存时间，单位天。
- `COOKIE_USERNAME`: 保存用户名的 cookie 名称。
- `COOKIE_REMEMBER_NAME`: 保存自动登录信息的 cookie 名称。
- `REVERSE_PROXY_AUTHENTICATION_USER`: 反向代理认证的 HTTP 头名称。

## Service (`service`)

- `ACTIVE_CODE_LIVE_MINUTES`: 登陆验证码失效时间，单位分钟。
- `RESET_PASSWD_CODE_LIVE_MINUTES`: 重置密码失效时间，单位分钟。
- `REGISTER_EMAIL_CONFIRM`: 启用注册邮件激活，前提是 `Mailer` 已经启用。
- `DISABLE_REGISTRATION`: 禁用注册，启用后只能用管理员添加用户。
- `SHOW_REGISTRATION_BUTTON`: 是否显示注册按钮。
- `REQUIRE_SIGNIN_VIEW`: 是否所有页面都必须登录后才可访问。
- `ENABLE_CACHE_AVATAR`: 是否缓存来自 Gravatar 的头像。
- `ENABLE_NOTIFY_MAIL`: 是否发送工单创建等提醒邮件，需要 `Mailer` 被激活。
- `ENABLE_REVERSE_PROXY_AUTHENTICATION`: 允许反向代理认证，更多细节见：https://github.com/gogits/gogs/issues/165
- `ENABLE_REVERSE_PROXY_AUTO_REGISTRATION`: 允许通过反向认证做自动注册。
- `ENABLE_CAPTCHA`: 注册时使用图片验证码。

## Webhook (`webhook`)

- `QUEUE_LENGTH`: 说明: Hook 任务队列长度。
- `DELIVER_TIMEOUT`: 请求webhooks的超时时间，单位秒。
- `SKIP_TLS_VERIFY`: 是否允许不安全的证书。
- `PAGING_NUM`: 每页显示的Webhook 历史数量。

## Mailer (`mailer`)

- `ENABLED`: 是否启用邮件服务。
- `DISABLE_HELO`: 禁用 HELO 命令。
- `HELO_HOSTNAME`: 自定义主机名来回应 HELO 命令。
- `HOST`: SMTP 主机地址和端口 (例如：smtp.gitea.io:587)。
- `FROM`: 邮件发送地址，RFC 5322. 这里可以填一个邮件地址或者 "Name" \<email@example.com\> 格式。
- `USER`: 用户名(通常就是邮件地址)。
- `PASSWD`: 密码。
- `SKIP_VERIFY`: 忽略证书验证。

说明：实际上 Gitea 仅仅支持基于 STARTTLS 的 SMTP。

## Cache (`cache`)

- `ADAPTER`: 缓存引擎，可以为 `memory`, `redis` 或 `memcache`。
- `INTERVAL`: 只对内存缓存有效，GC间隔，单位秒。
- `HOST`: 针对redis和memcache有效，主机地址和端口。
    - Redis: `network=tcp,addr=127.0.0.1:6379,password=macaron,db=0,pool_size=100,idle_timeout=180`
    - Memache: `127.0.0.1:9090;127.0.0.1:9091`

## Session (`session`)

- `PROVIDER`: Session 内容存储方式，可选 `memory`, `file`, `redis` 或 `mysql`。
- `PROVIDER_CONFIG`: 如果是文件，那么这里填根目录；其他的要填主机地址和端口。
- `COOKIE_SECURE`: 强制使用 HTTPS 作为session访问。
- `GC_INTERVAL_TIME`: Session失效时间。

## Picture (`picture`)

- `GRAVATAR_SOURCE`: 头像来源，可以是 `gravatar`, `duoshuo` 或者类似 `http://cn.gravatar.com/avatar/` 的来源
- `DISABLE_GRAVATAR`: 开启则只使用内部头像。
- `ENABLE_FEDERATED_AVATAR`: 启用头像联盟支持 (参见 http://www.libravatar.org)

## Attachment (`attachment`)

- `ENABLED`: 是否允许用户上传附件。
- `PATH`: 附件存储路径
- `ALLOWED_TYPES`: 允许上传的附件类型。比如：`image/jpeg|image/png`，用 `*/*` 表示允许任何类型。
- `MAX_SIZE`: 附件最大限制，单位 MB，比如： `4`。
- `MAX_FILES`: 一次最多上传的附件数量，比如： `5`。

## Log (`log`)

- `ROOT_PATH`: 日志文件根目录。
- `MODE`: 日志记录模式，默认是为 `console`。如果要写到多个通道，用逗号分隔
- `LEVEL`: 日志级别，默认为`Trace`。

## Cron (`cron`)

- `ENABLED`: 是否在后台运行定期任务。
- `RUN_AT_START`: 是否启动时自动运行。

### Cron - Update Mirrors (`cron.update_mirrors`)

- `SCHEDULE`: 自动同步镜像仓库的Cron语法，比如：`@every 1h`。

### Cron - Repository Health Check (`cron.repo_health_check`)

- `SCHEDULE`: 仓库健康监测的Cron语法，比如：`@every 24h`。
- `TIMEOUT`: 仓库健康监测的超时时间，比如：`60s`.
- `ARGS`: 执行 `git fsck` 命令的参数，比如：`--unreachable --tags`。

### Cron - Repository Statistics Check (`cron.check_repo_stats`)

- `RUN_AT_START`: 是否启动时自动运行仓库统计。
- `SCHEDULE`: 藏亏统计时的Cron 语法，比如：`@every 24h`.

## Git (`git`)

- `MAX_GIT_DIFF_LINES`: 比较视图中，一个文件最多显示行数。
- `MAX_GIT_DIFF_LINE_CHARACTERS`: 比较视图中一行最大字符数。
- `MAX_GIT_DIFF_FILES`: 比较视图中的最大现实文件数目。
- `GC_ARGS`: 执行 `git gc` 命令的参数, 比如： `--aggressive --auto`。

## Other (`other`)

- `SHOW_FOOTER_BRANDING`: 为真则在页面底部显示Gitea的字样。
- `SHOW_FOOTER_VERSION`: 为真则在页面底部显示Gitea的版本。
