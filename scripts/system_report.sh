#!/bin/bash

LOG_DIR="/opt/sysmon/logs"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
OUTFILE="$LOG_DIR/system_report_$TIMESTAMP.txt"

mkdir -p "$LOG_DIR"

echo "===== SYSTEM REPORT @ $TIMESTAMP =====" > "$OUTFILE"

echo "[CPU]" >> "$OUTFILE"
top -bn1 | head -5 >> "$OUTFILE"

echo "[MEMORY]" >> "$OUTFILE"
free -h >> "$OUTFILE"

echo "[DISK]" >> "$OUTFILE"
df -h >> "$OUTFILE"

echo "[UPTIME]" >> "$OUTFILE"
uptime >> "$OUTFILE"

echo "[LOGGED IN USERS]" >> "$OUTFILE"
w >> "$OUTFILE"

echo "Report saved to $OUTFILE"
