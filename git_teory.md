# Start

To start project in directory you must write (create folder /.git):

```bash
git init
```

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