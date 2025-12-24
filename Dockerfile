FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/mholt/caddy-ratelimit

FROM caddy:latest

WORKDIR /app

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

COPY Caddyfile /etc/caddy/Caddyfile
COPY entrypoint.sh /app/entrypoint.sh

RUN chmod 755 /app/entrypoint.sh

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
