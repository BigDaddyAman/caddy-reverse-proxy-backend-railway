# Caddy Reverse Proxy – Backend Service (Railway)

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/caddy-backend-proxy?referralCode=nIQTyp&utm_medium=integration&utm_source=template&utm_campaign=generic)

A minimal, production-ready **Caddy reverse proxy** for backend services running on **Railway**.  
Framework-agnostic — works with Django, FastAPI, Flask, Node.js, Go, and any HTTP backend.

This template forwards all incoming traffic to a private backend service using Railway’s internal network.

---

## ✨ Features

- 🚀 Minimal Caddy reverse proxy
- 🩺 Health check endpoint (`/healthz`)
- 🛡 Blocks common path scanning attempts
- 🔒 Sensible security headers
- 🔁 Works with any HTTP backend
- ⚙ Railway-ready (dynamic `$PORT`)
- 📦 No plugins, no custom Caddy build

---

## 📦 Files

- `Caddyfile` – Caddy reverse proxy configuration
- `Dockerfile` – Minimal container image
- `entrypoint.sh` – Startup script

---

## 🔧 Required Environment Variables

| Variable | Description |
|--------|------------|
| `BACKEND_HOST` | Private Railway domain of your backend service |
| `BACKEND_PORT` | Port your backend listens on (e.g. `8000`) |

Example (Railway):
```env
BACKEND_HOST=${{MyBackend.RAILWAY_PRIVATE_DOMAIN}}
BACKEND_PORT=8000
```

---

---

## 🌐 Custom Domain

To use a custom domain with this proxy:

1. Open your Railway project
2. Go to **Settings → Domains**
3. Add your custom domain
4. Update your DNS records as instructed by Railway

Railway handles HTTPS and TLS termination automatically.  
No additional Caddy configuration is required.

## 🩺 Health Check

The proxy exposes a health endpoint:

```
GET /healthz
```

Always returns `200 OK` and does not depend on backend availability.

---

## 🔒 Security Notes

This template blocks common automated scans such as:
- `/xmlrpc.php`
- `/.env`
- `/.git`
- `/wp-login.php`
- `/phpmyadmin`

Security headers included by default:
- `X-Frame-Options: DENY`
- `X-Content-Type-Options: nosniff`
- `Referrer-Policy: strict-origin`

---

## 🚀 Usage

1. Deploy this repository on Railway
2. Set the required environment variables
3. Point `BACKEND_HOST` to your private backend service
4. Done 🎉

All incoming traffic will be proxied to your backend.

---

## 🧠 Notes

- HTTPS is handled by Railway
- This template does not serve static files
- Designed to be simple, transparent, and extensible

---

## License

MIT License.

Uses Caddy (Apache License 2.0).

Community-maintained.