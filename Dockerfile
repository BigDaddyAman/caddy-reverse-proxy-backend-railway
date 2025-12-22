FROM caddy:latest

WORKDIR /app

COPY Caddyfile /etc/caddy/Caddyfile
COPY entrypoint.sh /app/entrypoint.sh

RUN chmod 755 /app/entrypoint.sh

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
