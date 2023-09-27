## Resolve Git Merge Conflicts

### Problem

Sarah and Max were working on writting some stories which they have pushed to the repository. Max has recently added some new changes and is trying to push them to the repository but he is facing some issues. Below you can find more details:

SSH into storage server using user max and password Max_pass123. Under /home/max you will find the story-blog repository. Try to push the changes to the origin repo and fix the issues. The story-index.txt must have titles for all 4 stories. Additionally, there is a typo in The Lion and the Mooose line where Mooose should be Mouse.

Click on the Gitea UI button on the top bar. You should be able to access the Gitea page. You can login to Gitea server from UI using username sarah and password Sarah_pass123 or username max and password Max_pass123.

Note: For these kind of scenarios requiring changes to be done in a web UI, please take screenshots so that you can share it with us for review in case your task is marked incomplete. You may also consider using a screen recording software such as loom.com to record and share your work.

### Solution

- SSH into Storage server using user max: `sshpass -p Max_pass123 ssh -o StrictHostKeyChecking=no max@ststor01`
- Go to story-blog directory: `cd /home/max/story-blog`
- Pull from origin: `git pull`
- There's a conflicts that need to be solved in `story-index.txt`: fix it by add the 4th story
- Fix the typo: Mooose -> Mouse
- Commit changes:

```shell
git add .
git commit -m 'resolve conflicts & fix typo'
git push
```

- Result:

  ![Gitea UI](./gitea.png)
