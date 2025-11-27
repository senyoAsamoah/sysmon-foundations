# Project 7 — Capstone: Deploy, Automate, and Document

## 🎯 Objectives
- Use everything learned to build a small production-style deployment and operations workflow
- Automate deployment, provide documentation, and demonstrate on-call readiness

## 🧪 Tasks
1. Deployment script `scripts/deploy.sh` that:
   - Pulls latest from Git (`git pull`)
   - Installs/updates scripts into `/opt/sysmon`
   - Restarts `sysmon.service` and `webapp.service`
2. Ensure `services/sysmon.service` runs the CLI's `system` subcommand and is enabled at boot:
   ```bash
   sudo systemctl enable --now sysmon.service
    ```
3. Configure Nginx so that /sysinfo is publicly available on port 80 and is proxied to the webapp.

4. Create SLAs / SLOs for the service (e.g., /sysinfo should respond within 500ms 95% of the time).

    - Demonstrate how you'd measure it (basic curl loop + timestamps or a simple k6 script if desired).

5. Write the runbook docs/runbook.md that covers:

    - How to restart services

    - Where logs live and how to interpret them

    - Common troubleshooting steps (service not starting, port conflict, permission issues)

6. Prepare an incident playbook and simulate one incident (e.g., webapp crashes on startup) and document the remediation steps taken.

## ✅ Deliverables
    - `scripts/deploy.sh` in the repo.

    - `docs/runbook.md` and `docs/incident_simulation.md` documenting the simulated incident response.
    
    - A final README section summarizing the capstone results and pointing to the artifacts.