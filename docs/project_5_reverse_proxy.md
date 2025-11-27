# Project 5 — Build a Local HTTP Service + Reverse Proxy (Nginx)

## 🎯 Objectives
- Run a small HTTP service locally
- Configure Nginx as a reverse proxy to route traffic to the service
- Learn basic virtual host configuration and proxy settings

## 🧪 Tasks
1. Create a minimal web service in `scripts/` that listens on port `5000` and responds to `/sysinfo` with the latest system report.
   - Options: Python `http.server` with a tiny handler, Node, or a bash loop using `nc`.
2. Configure Nginx using `nginx/sysmon.conf` to proxy `/sysinfo` to `http://localhost:5000`.
3. Test locally using `curl http://localhost/sysinfo` and `curl http://<vm-ip>/sysinfo` from another machine if available.
4. Harden the proxy for local development:
   - Add `proxy_set_header Host $host;` and `proxy_set_header X-Real-IP $remote_addr;`
5. Ensure the web service can be started/stopped with a systemd unit (see `services/webapp.service`).

## ✅ Deliverables
- Working `nginx/sysmon.conf` and `services/webapp.service` files in the repo.
- Steps to enable and test the service locally (commands used).
- A short note on how Nginx handles reverse proxying and why it’s useful.
