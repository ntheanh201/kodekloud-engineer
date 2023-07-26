## Linux GPG Encryption

### Problem

We have confidential data that needs to be transferred to a remote location, so we need to encrypt that data.We also need to decrypt data we received from a remote location in order to understand its content.

On storage server in Stratos Datacenter we have private and public keys stored /home/\*\_key.asc. Use those keys to perform the following actions.

Encrypt /home/encrypt_me.txt to /home/encrypted_me.asc.

Decrypt /home/decrypt_me.asc to /home/decrypted_me.txt. (Passphrase for decryption and encryption is kodekloud).

### Debugging

- ssh to storage server, ls /home:

```
decrypt_me.asc
private_key.asc
```

### Solution

```shell
sshpass -p Bl@kW ssh -o StrictHostKeyChecking=no natasha@172.16.238.15

cd /home

gpg --import private_key.asc

gpg --list-keys

echo Bl@kW | sudo -S gpg -o encrypted_me.asc --batch --passphrase kodekloud -c encrypt_me.txt

echo Bl@kW | sudo -S gpg -d -o decrypted_me.txt --batch --passphrase kodekloud decrypt_me.asc

```

- See: [Ansible solution](solution.yaml)
