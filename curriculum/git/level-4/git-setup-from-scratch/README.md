## Git Setup from Scratch

### Problem

Some new developers have joined xFusionCorp Industries and have been assigned Nautilus project. They are going to start
development on a new application, and some pre-requisites have been shared with the DevOps team to proceed with. Please
note that all tasks need to be performed on storage server in Stratos DC.

a. Install git, set up any values for user.email and user.name globally and create a bare repository /opt/official.git.

b. There is an update hook (to block direct pushes to the master branch) under /tmp on storage server itself; use the
same to block direct pushes to the master branch in /opt/official.git repo.

c. Clone /opt/official.git repo in /usr/src/kodekloudrepos/official directory.

d. Create a new branch named xfusioncorp_official in repo that you cloned under /usr/src/kodekloudrepos directory.

e. There is a readme.md file in /tmp directory on storage server itself; copy that to the repo, add/commit in the new
branch you just created, and finally push your branch to the origin.

f. Also create master branch from your branch and remember you should not be able to push to the master directly as per
the hook you have set up.

### Solution

- Access Storage Server via SSH
- Switch to root user: `sudo su`
- Install git: `dnf install git -y`
- Set up user.email and user.name globally:
  - `git config --global user.email "ntheanh201@gmail.com"`
  - `git config --global user.name "ntheanh201"`
- Create a bare repository: `git init --bare /opt/official.git`
- Copy the update hook to the hooks directory of the repository: `cp /tmp/update /opt/official.git/hooks/`
- Make the update hook executable: `chmod +x /opt/official.git/hooks/update`
- Clone the repository: `git clone /opt/official.git /usr/src/kodekloudrepos/official`
- Create a new branch: `git checkout -b xfusioncorp_official`
- Copy the readme.md file to the repository: `cp /tmp/readme.md /usr/src/kodekloudrepos/official/`
- Add the readme.md file to the repository: `git add readme.md`
- Commit the readme.md file: `git commit -m "Add readme.md file"`
- Push the branch to the origin: `git push origin xfusioncorp_official`
- Create the master branch: `git checkout -b master`
- Push the master branch to the origin: `git push origin master`