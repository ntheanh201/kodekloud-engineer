## Linux Postfix Mail Server

### Problem

xFusionCorp Industries has planned to set up a common email server in Stork DC. After several meetings and
recommendations they have decided to use postfix as their mail transfer agent and dovecot as an IMAP/POP3 server. We
would like you to perform the following steps:

1. Install and configure postfix on Stork DC mail server.


2. Create an email account james@stratos.xfusioncorp.com identified by Rc5C9EyvbU.


3. Set its mail directory to /home/james/Maildir.


4. Install and configure dovecot on the same server.

### Debugging

### Solution

```shell
echo Gr00T123 | sudo su
sudo dnf install -y postfix dovecot telnet
```

- Edit `/etc/postfix/main.cf`:

```shell
myhostname = stmail01.stratos.xfusioncorp.com
mydomain = stratos.xfusioncorp.com
myorigin = $mydomain
inet_interfaces = all
mydestination = $myhostname, localhost.$mydomain, localhost, $mydomain
mynetworks = 172.16.238.0/24, 127.0.0.0/8
home_mailbox = Maildir/
```

```shell
systemctl start postfix
systemctl status postfix

useradd james
passwd james
cat /etc/passwd | grep james

telnet stmail01 25
ehlo localhost
mail from: james@stratos.xfusioncorp.com
rcpt to: james@stratos.xfusioncorp.com
data
test mail
.
quit
```

- Edit `/etc/dovecot/dovecot.conf`

```shell
:set nu
protocols = imap pop3 lmtp submission
```

- Edit `/etc/dovecot/conf.d/10-mail.conf`

```shell
mail_location = maildir:~/Maildir
```

- Edit `/etc/dovecot/conf.d/10-auth.conf`

```shell
disable_plaintext_auth = yes  #line 10
auth_mechanisms = plain login #line 100
```

- Edit `/etc/dovecot/conf.d/10-master.conf`

```shell
user = postfix  #line 102
group = postfix #line 103
```

- `systemctl start dovecot`
- `systemctl status dovecot`

```shell
telnet stmail01 110
user james
pass Rc5C9EyvbU
retr 1
quit
```

- See: [Ansible solution](solution.yaml)
