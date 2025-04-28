Task 1  
I created HTML, JavaScript and CSS code  simple  application where i can write my name and  site return greetings.  
All code is visible in my gitHub , aslo they are uploaded in assignment file.   
                                                                Task 2   

Here i all git command that i use for perform second task
$ git init
Initialized empty Git repository in C:/Users/Rati/Desktop/Midterm/.git/
 
Rati@DESKTOP-JVM9VK2 MINGW64 ~/Desktop/Midterm (master)
$ touch index.html style.css app.js
 
Rati@DESKTOP-JVM9VK2 MINGW64 ~/Desktop/Midterm (master)
$ git checkout -b main      # create and switch to main branch
git add .
git commit -m "Initial commit: basic HTML, CSS, and JS setup"
 
git checkout -b dev       # create and switch to dev branch
Switched to a new branch 'main'
[main (root-commit) 7650e5a] Initial commit: basic HTML, CSS, and JS setup
3 files changed, 70 insertions(+)
create mode 100644 app.js
create mode 100644 index.html
create mode 100644 style.css
Switched to a new branch 'dev'
 
Rati@DESKTOP-JVM9VK2 MINGW64 ~/Desktop/Midterm (dev)
$ git checkout -b dev       # create and switch to dev branch
fatal: a branch named 'dev' already exists
 
Rati@DESKTOP-JVM9VK2 MINGW64 ~/Desktop/Midterm (dev)
$ git add .
git commit -m "Add greeting function and input form handling"
[dev bea3486] Add greeting function and input form handling
1 file changed, 1 insertion(+), 1 deletion(-)
 
Rati@DESKTOP-JVM9VK2 MINGW64 ~/Desktop/Midterm (dev)
$ git add .
git commit -m "Update greeting style and test function"
On branch dev
nothing to commit, working tree clean
 
Rati@DESKTOP-JVM9VK2 MINGW64 ~/Desktop/Midterm (dev)
$ git remote add origin https://github.com/jorjo991/midterm.git
 
Rati@DESKTOP-JVM9VK2 MINGW64 ~/Desktop/Midterm (dev)
$ git push -u origin main
git push origin dev
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 6 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 1.11 KiB | 228.00 KiB/s, done.
Total 5 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/jorjo991/midterm.git
* [new branch]      main -> main
branch 'main' set up to track 'origin/main'.
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 6 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 390 bytes | 195.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote:
remote: Create a pull request for 'dev' on GitHub by visiting:
remote:      https://github.com/jorjo991/midterm/pull/new/dev
remote:
To https://github.com/jorjo991/midterm.git
* [new branch]      dev -> dev
 
Rati@DESKTOP-JVM9VK2 MINGW64 ~/Desktop/Midterm (dev)
$ git checkout main
git merge dev
git commit -m "Merge dev branch with final greeting and styling"
git push
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
Updating 7650e5a..bea3486
Fast-forward
index.html | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)
 
nothing to commit, working tree clean
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/jorjo991/midterm.git
   7650e5a..bea3486  main -> main 
 

                                                                                      Task 3  
Here is YML test file   
name: Run JavaScript Tests

on:
  push:
    branches: [main, dev]
  pull_request:
    branches: [main, dev]

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Setup Node.js
        uses: actions/setup-node@v3
        with:
          node-version: "20"

      - name: Run Tests
        run: |
          echo "Running JavaScript tests..."
          node test.js




Action screen   
<img width="479" alt="image" src="https://github.com/user-attachments/assets/0674b885-0136-4220-abaa-7df48bb300c2" />

                                                                                   

                                                                                       Task 5  
deploy_pipeline/
├── blue_env/         # Blue version of the application
├── green_env/        # Green version of the application
├── rollback/         # Backup of the last deployed version
├── current/          # "Production" folder (what is served now)
├── init.sh           # Script to initialize environment
├── deploy.sh         # Script to switch environments (Blue-Green Deployment)
├── rollback.sh       # Script to rollback to previous version  

  


Admin@DESKTOP-F28HGON MINGW64 /
$ cd ~/Desktop/failebi/Midterm/deploy_pipeline

Admin@DESKTOP-F28HGON MINGW64 ~/Desktop/failebi/Midterm/deploy_pipeline (main)
$ rm -rf current

Admin@DESKTOP-F28HGON MINGW64 ~/Desktop/failebi/Midterm/deploy_pipeline (main)
$ bash init.sh
Initialized current/ to point to green_env
Rollback preloaded with green_env

Admin@DESKTOP-F28HGON MINGW64 ~/Desktop/failebi/Midterm/deploy_pipeline (main)
$ bash deploy.sh
No active environment found. Starting fresh with green_env.
Backing up current to rollback/
Switched to GREEN environment.
Now serving: green_env

Admin@DESKTOP-F28HGON MINGW64 ~/Desktop/failebi/Midterm/deploy_pipeline (main)
$ bash deploy.sh
Active environment: green_env
Backing up current to rollback/  

 



First, I organized my project into a folder called deploy_pipeline, which contained:
•	green_env/ – green version of the app
•	blue_env/ – blue version of the app
•	rollback/ – for saving backups
•	current/ – the production folder
•	three scripts: init.sh, deploy.sh, and rollback.sh
________________________________________
Then, I opened Git Bash, went into the project folder, and cleaned old files by running:
bash
cd ~/Desktop/failebi/Midterm/deploy_pipeline
rm -rf current
________________________________________
After that, I initialized the environment by running:
bash
bash init.sh
This copied everything from green_env into current/ and also prepared the rollback backup.
________________________________________
Next, I simulated a deployment by running:
bash
bash deploy.sh
Since it was the first deployment, it started with the green environment.
________________________________________
Then, I ran bash deploy.sh again, and it switched the environment from green to blue automatically.


                                                         Task 6  

I created healthCheck file which check if program was running  
#!/bin/bash

cd "$(dirname "$0")"

# URL to check (adjust if needed)
URL="http://localhost:5000"

# Log file
LOGFILE="health.log"

# Perform check
STATUS=$(curl --silent --head --output /dev/null --write-out '%{http_code}' "$URL")

# Get current timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Log result
if [ "$STATUS" == "200" ]; then
    echo "$TIMESTAMP - SUCCESS - App is running (HTTP 200)" >> "$LOGFILE"
else
    echo "$TIMESTAMP - FAILURE - App is NOT running (Status: $STATUS)" >> "$LOGFILE"
fi


after this I run my app in localhost node.js sever and after this I run my this file  
$ cd ~/Desktop/failebi/Midterm/deploy_pipeline

Admin@DESKTOP-F28HGON MINGW64 ~/Desktop/failebi/Midterm/deploy_pipeline (main)
$ bash healthcheck.sh
bash: healthcheck.sh: No such file or directory

Admin@DESKTOP-F28HGON MINGW64 ~/Desktop/failebi/Midterm/deploy_pipeline (main)
$ bash healthcheck.sh
 
And I get that sever was running successfully  
