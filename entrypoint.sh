#!/bin/sh
set -e

echo "🚀 Starting Caddy"
echo "🔗 Proxying to backend: ${BACKEND_HOST}:${BACKEND_PORT}"

exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
