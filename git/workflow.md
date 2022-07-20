### how to see local branches

`git branch`

### create new branch

`git checkout -b feature/my-branch`

### update feature branch with new commits from remote main branch

```sh
git checkout main && git pull
git checkout feature/my-branch && git rebase main
```
