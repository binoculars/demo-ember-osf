# Cloud 9

1. Create a new workspace
2. `git clone` / `git fetch`
3. `git checkout develop`
4. `./setup/cloud9.sh`
5. Toolbar → Run → Run Configurations → New Run Configurations
  1. Give it a name (e.g. `serve`)
  2. Command: `ember server`
  3. Click ENV
    - BACKEND stage
    - PORT 8080
6. Go to http://[workspace-name]-[username].c9users.io/