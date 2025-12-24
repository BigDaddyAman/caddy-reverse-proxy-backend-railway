#!/bin/sh
set -e

echo "🚀 Starting Caddy with Rate Limit Plugin"
echo "Using backend: ${BACKEND_HOST}:${BACKEND_PORT}"

exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
