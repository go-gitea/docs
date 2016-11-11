FROM alpine:edge
EXPOSE 80

RUN apk update && \
  apk add \
    caddy \
    mailcap && \
  rm -rf \
    /var/cache/apk/*

CMD ["/usr/sbin/caddy", "-conf", "/etc/caddy/caddy.conf"]

COPY docker/caddy.conf /etc/caddy/caddy.conf
COPY public /srv/www
