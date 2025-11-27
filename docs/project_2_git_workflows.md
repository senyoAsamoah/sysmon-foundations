# Project 2 — Git Workflow & Version Control

## 🎯 Objectives
- Initialize the project repository
- Use branches and meaningful commit messages
- Practice pull requests and conflict resolution

## 🧪 Tasks
1. Initialize a git repository in the project root (if not already):

   ```bash
   git init
   ```
2. Create and switch to a working branch:

    ```bash
    git checkout -b setup-project
    ```
3. Add sensible .gitignore entries (logs, local config, temp files). Commit the change.

4. Create docs/ and add project_1_linux_basics.md notes (you already did this in Project 1).

5. Commit and push to a remote (create a GitHub repo and follow the remote add instructions).

6. Create a new feature branch scripts and add the scripts/ scaffolds.

7. Open a Pull Request on GitHub from scripts into main (or master).

8. Simulate a merge conflict:

    - Edit the same line in README.md on main and scripts branches.

    - Attempt to merge and resolve the conflict locally.

9. Practice writing clear commit messages and PR descriptions.

## 📦 Deliverables
    - A branch-based commit history demonstrating the steps above.
    - A short git_workflow_notes.md describing the commands you used and why.