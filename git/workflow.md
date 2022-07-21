## Full set of Git aliases
[my aliases on GitHub](https://gist.github.com/levpa/3658c24beb62acd2dcd9f92fc79c7d99)

### how to see all branches ( local and remote for a given repository )
`git branch -a`

### create new devops branch
`git checkout -b devops/my-branch`

I can recommend GitLens plugin and "Source Control" panel on the left side of UI.
### I use it for fast view of new/changed/deleted files
`git status` 
### How to see the difference between last commit and now in terminal (GitLens doing that in UI)
### use space to PgDn, Enter to go down a line and Q for quit
`git diff HEAD^ HEAD | less`

### add files to stage and commit them with message

```sh
# you can use aliases from the top: git ac (add->commit) and git cmp (add->commit->push)

git add . && git commit -m " what I've been working on all day "
git push origin devops/my-branch
```
### update devops branch with new commits from remote main branch

```sh
git checkout main && git fetch origin main
git checkout devops/my-branch && git rebase origin/main
git push --force origin devops/my-branch 
```
### remove local and remote branches with alias, can be helpful with branches for testing.
`git checkout main && git nuke devops/my-branch`

### to squash commits using reset --soft (simplest variant)
```sh
git reset --soft HEAD~3 &&
git commit -m " info for my squashed commits "
```

## if we wanna squash 5 last commits into one:
`git rebase -i HEAD~5 // then replace "pick" on the second and subsequent commits with "squash"`

### remove comitted creds from the repository: 
### use BFG Repo-Cleaner(requires Java SDK)
[BFG Repo-Cleaner page](https://rtyley.github.io/bfg-repo-cleaner/)
```sh
# remove files with creds
bfg --delete-files <file to remove>  my-repo.git
# replace files with creds
bfg --replace-text passwords.txt  my-repo.git
```
### or more modern tool: git-filter-repo
[git-filter-repo page](https://github.com/newren/git-filter-repo)
