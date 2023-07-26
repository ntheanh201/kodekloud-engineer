## MariaDB Troubleshooting

### Problem

There is a critical issue going on with the Nautilus application in Stratos DC. The production support team identified that the application is unable to connect to the database. After digging into the issue, the team found that mariadb service is down on the database server.

Look into the issue and fix the same.

### Debugging

`systemctl start mariadb`

`systemctl status mariadb -l`

```bash
● mariadb.service - MariaDB database server
   Loaded: loaded (/usr/lib/systemd/system/mariadb.service; disabled; vendor preset: disabled)
   Active: failed (Result: exit-code) since Thu 2023-07-13 09:42:40 UTC; 36s ago
  Process: 587 ExecStartPre=/usr/libexec/mariadb-prepare-db-dir %n (code=exited, status=1/FAILURE)

Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com mariadb-prepare-db-dir[587]: Database MariaDB is not initialized, but the directory /var/lib/mysql is not empty, so initialization cannot be done.
Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com systemd[1]: Child 587 belongs to mariadb.service
Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com systemd[1]: mariadb.service: control process exited, code=exited status=1
Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com systemd[1]: mariadb.service got final SIGCHLD for state start-pre
Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com systemd[1]: mariadb.service changed start-pre -> failed
Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com systemd[1]: Job mariadb.service/start finished, result=failed
Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com systemd[1]: Failed to start MariaDB database server.
Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com systemd[1]: Unit mariadb.service entered failed state.
Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com systemd[1]: mariadb.service failed.
Jul 13 09:42:40 stdb01.stratos.xfusioncorp.com systemd[1]: mariadb.service: cgroup is empty
```

- default mariadb service folder: `/usr/lib/systemd/system`

### Solution

You need to run `mysql_install_db` to initialize MySQL data directory.

```bash
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
```

- See: [Ansible solution](solution.yaml)
