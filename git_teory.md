# Start

To start project in directory you must write (create folder /.git):

```bash
git init
```

After on GitHubsite create repository and in terminal write to change user name or email. You must write data witch you write to log in GitHub:

```bash
git config --global user.name
or
git config --global user.email
```

To change this data write it like this

```bash
git config --global user.name "NEW_USER_NAME"
or
git config --global user.email "NEW_EMAIL"
```

Then copy command from GitHub site where you create repository

```bash
git remote add origin https://github.com/USER_NAME/REPOSITORY_NAME.git
git push -u origin BRANCH_NAME
```

# Common commands

If you want to know status of files in git use command:

```bash
git status
```

For file tracking (for tracking all files write "."):

```bash
git add FILES/FILE
```

If you want to untrack file or files write:

```bash
git rm --cached FILES/FILE
```

To clone repository write:

```bash
git clone https://github.com/USER_NAME/REPOSITORY_NAME.git
```

To get last version of code from server:

```bash
git pull
```

# Commit

To commite files in repository and give name this commit:

```bash
git commit -m "MESSAGE"
```

# Git ignore

To ignore files or folders by git create file ".gitignore". In this file you can write name of files of directories.

Example:
```bash
FILE_NAME.EXTENTION
FOLDER_NAME
```

# Branch

Rename branch:

```bash
git branch -M NEW_BRANCH_NAME
```

If you want to know current branch and list of branches:

```bash
git branch
```

To create new branch:

```bash
git branch BRANCH_NAME
```

To delete branch:

```bash
git branch -D BRANCH_NAME
```

To change branch:

```bash
git checkout BRANCH_NAME
```

To merge two branches in one branch (merge active branch with branch under name BRANCH_NAME):

```bash
git merge BRANCH_NAME
```