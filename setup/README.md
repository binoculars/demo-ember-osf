# Cloud 9

1. Create a new workspace
  - Use the https git url (not the ssh git url) for the *Clone from Git* field
1. Run `git checkout <branch>`, where <branch> is the branch name (e.g. develop)
1. Run `. ./setup/cloud9.sh`
1. Toolbar → Run → Run Configurations → New Run Configurations
  1. Give it a name (e.g. `serve`)
  1. Command: `ember server`
  1. Click ENV
    - BACKEND stage
1. Go to http://[workspace-name]-[username].c9users.io/