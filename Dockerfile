FROM alpine:edge
EXPOSE 80

RUN apk update && \
  apk add wget mailcap ca-certificates && \
  rm -rf /var/cache/apk/* && \
  wget -O /tmp/caddy.tar.gz "https://caddyserver.com/download/build?os=linux&arch=amd64&features=locale%2Csearch" && \
  mkdir -p /tmp/caddy && \
  tar xvzf /tmp/caddy.tar.gz -C /tmp/caddy && \
  cp /tmp/caddy/caddy /usr/sbin/caddy && \
  rm -rf /tmp/caddy*

CMD ["/usr/sbin/caddy", "-conf", "/etc/caddy.conf"]

COPY docker/caddy.conf /etc/caddy.conf
COPY public /srv/www
