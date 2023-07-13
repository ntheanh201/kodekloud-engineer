## Linux String Substitute	Linux String Substitute

### Problem

The backup server in the Stratos DC contains several template XML files used by the Nautilus application. However, these
template XML files must be populated with valid data before they can be used. One of the daily tasks of a system admin
working in the xFusionCorp industries is to apply string and file manipulation commands!

Replace all occurances of the string String to Torpedo on the XML file /root/nautilus.xml located in the backup server.

### Solution

- See: [Ansible Solution](solution.yaml)

### Problem - SED

There is some data on Nautilus App Server 3 in Stratos DC. Data needs to be altered in several of the files. On Nautilus
App Server 3, alter the /home/BSD.txt file as per details given below:

a. Delete all lines containing word software and save results in /home/BSD_DELETE.txt file. (Please be aware of case
sensitivity)

b. Replace all occurrence of word the to for and save results in /home/BSD_REPLACE.txt file.

Note: Let's say you are asked to replace word to with from. In that case, make sure not to alter any words containing
this string; for example upto, contributor etc.

### Solution

- See: [Ansible Solution](solution-sed.yaml)
