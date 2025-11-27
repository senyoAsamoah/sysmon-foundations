# Project 6 — SysMon Unified CLI

## 🎯 Objectives
- Combine scripts into a single, user-friendly CLI
- Implement subcommands, help, and argument parsing
- Make the tool installable system-wide

## 🧪 Tasks
1. Improve `scripts/sysmon` to support:
   - `sysmon system` — run the system report and print path to last report
   - `sysmon network <opts>` — call `network_tools.sh` with the passed args
   - `sysmon serve` — start the local web service (for dev)
   - `sysmon install` — copy the script to `/usr/local/bin` (requires sudo)
   - `sysmon version` and `sysmon help`
2. Add basic argument parsing and input validation.
3. Add logging for command runs to `/opt/sysmon/logs/cli_runs.log`.
4. Create a simple manpage or `--help` output that documents commands and options.

## ✅ Deliverables
- A polished `scripts/sysmon` CLI script with executable bit set.
- Installation instructions and a sample `systemd` unit that calls the CLI.
- Evidence of the tool being used (logs or sample outputs).
