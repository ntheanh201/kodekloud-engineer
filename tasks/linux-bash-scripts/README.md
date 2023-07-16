## Linux Bash Scripts

### Problem

The production support team of xFusionCorp Industries is working on developing some bash scripts to automate different
day to day tasks. One is to create a bash script for taking websites backup. They have a static website running on App
Server 2 in Stratos Datacenter, and they need to create a bash script named media_backup.sh which should accomplish the
following tasks. (Also remember to place the script under /scripts directory on App Server 2)

a. Create a zip archive named xfusioncorp_media.zip of /var/www/html/media directory.

b. Save the archive in /backup/ on App Server 2. This is a temporary storage, as backups from this location will be
clean on weekly basis. Therefore, we also need to save this backup archive on Nautilus Backup Server.

c. Copy the created archive to Nautilus Backup Server server in /backup/ location.

d. Please make sure script won't ask for password while copying the archive file. Additionally, the respective server
user (for example, tony in case of App Server 1) must be able to run it.

### Debugging

### Solution

- See: [Ansible solution](./solution.yaml)
