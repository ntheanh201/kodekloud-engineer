## Linux Bash Scripts

### Problem

The production support team of xFusionCorp Industries is working on developing some bash scripts to automate different day to day tasks. One is to create a bash script for taking websites backup. They have a static website running on App Server 3 in Stratos Datacenter, and they need to create a bash script named news_backup.sh which should accomplish the following tasks. (Also remember to place the script under /scripts directory on App Server 3)

a. Create a zip archive named xfusioncorp_news.zip of /var/www/html/news directory.

b. Save the archive in /backup/ on App Server 3. This is a temporary storage, as backups from this location will be clean on weekly basis. Therefore, we also need to save this backup archive on Nautilus Backup Server.

c. Copy the created archive to Nautilus Backup Server server in /backup/ location.

d. Please make sure script won't ask for password while copying the archive file. Additionally, the respective server user (for example, tony in case of App Server 1) must be able to run it.

### Debugging

### Solution

```shell

sshpass -p BigGr33n ssh -o StrictHostKeyChecking=no banner@172.16.238.12
cd /scripts
echo "zip -r xfusioncorp_news.zip /var/www/html/news
mv xfusioncorp_news.zip /backup/xfusioncorp_news.zip
scp /backup/xfusioncorp_news.zip clint@172.16.238.16:/backup" > news_backup.sh
chmod +x news_backup.sh
./news_backup.sh

cd /backup

ssh-keygen -t rsa -b 4096 -f "/home/banner/.ssh/id_rsa" -q -N ""
sshpass -p H@wk3y3 ssh-copy-id -i "/home/banner/.ssh/id_rsa.pub" clint@172.16.238.16 -f -o StrictHostKeyChecking=no

scp xfusioncorp_news.zip clint@172.16.238.16:/backup/

```

- See: [Ansible solution](solution.yaml)
