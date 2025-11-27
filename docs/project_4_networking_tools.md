# Project 4 — Networking Tools Script

## 🎯 Objectives
- Build networking troubleshooting utilities
- Understand DNS resolution, traceroute, and ports
- Collect network diagnostics into logs for later inspection

## 🧪 Tasks
1. Implement `scripts/network_tools.sh` with subcommands:
   - `ping <host>` — run `ping -c 4`
   - `dns <host>` — run `dig +short` and `dig ANY` for the host
   - `trace <host>` — run `traceroute` or `tracepath`
   - `ports` — display listening sockets using `ss -tuln` and `ss -tulnp` (if root)
   - `http <url>` — run `curl -I` and a full `curl -sS` and save HTTP headers/status
2. Ensure outputs are timestamped and stored in `/opt/sysmon/logs/` or `logs/` in the repo.
3. Add error handling: check for required commands (`dig`, `traceroute`, `ss`) and print helpful messages.
4. Add a `--json` flag that produces a simple JSON summary for automated parsing (bash + jq recommended, but plain string JSON is fine).

## ✅ Deliverables
- `scripts/network_tools.sh` with documented examples in this file.
- A sample `logs/network_<timestamp>.txt` demonstrating the outputs.
- Short notes on what each tool reveals about system/network health.
