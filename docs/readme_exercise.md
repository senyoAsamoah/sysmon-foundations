## grep exercises

Find all ERROR lines: grep "ERROR" sample_app.log
Find all failed login attempts: grep "Failed login" sample_app.log
Find all activity from a suspicious IP: grep "203.0.113.5" sample_app.log
Count errors per service: grep -oP "\[.*?-service\]" sample_app.log | sort | uniq -c

## awk exercises

Print only timestamps and log levels: awk '{print $1, $2, $3}' sample_app.log
Calculate average response time for 200 responses: awk '/200/ && /ms/ {match($0, /([0-9]+)ms/, a); sum+=a[1]; count++} END {print sum/count "ms avg"}' sample_app.log
Count occurrences of each log level: awk '{print $3}' sample_app.log | sort | uniq -c | sort -rn

## sed exercises

Redact IP addresses: sed 's/ip=[0-9.]\+/ip=REDACTED/g' sample_app.log
Extract just the timestamp: sed 's/^\[\(.*\)\] .*/\1/' sample_app.log
Replace all WARN with ⚠️ WARNING: sed 's/WARN/WARNING/g' sample_app.log