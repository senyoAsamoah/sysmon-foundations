# Project 3 — System Report Script (Bash)

## 🎯 Objectives
- Write a robust bash script that gathers key system metrics
- Learn to format output and rotate logs
- Schedule periodic execution with cron

## 🧪 Tasks
1. Build `/opt/sysmon/scripts/system_report.sh` (or use the repo `scripts/system_report.sh`).
   The script should collect:
   - Timestamp
   - CPU usage (top or /proc/stat)
   - Memory usage (`free -h`)
   - Disk usage (`df -h`)
   - Load average (`cat /proc/loadavg`)
   - Top 5 processes by CPU (`ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6`)
2. Ensure the script is idempotent and creates the logs directory if necessary.
3. Implement simple log rotation: keep last 7 reports, delete older ones.
4. Make the script accept flags:
   - `--output-dir` to specify log directory
   - `--compress` to gzip old reports
5. Schedule the script using cron:
   ```cron
   */5 * * * * /opt/sysmon/scripts/system_report.sh --output-dir /opt/sysmon/logs
   ```

## 📦 Deliverables
    - `scripts/system_report.sh` in the repo with comments and usage instructions.
    - Example output log file committed to docs/ (anonymized if needed).
    - A short explanation of the rotation strategy used.
