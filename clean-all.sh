#!/bin/sh

clean_branch()
{
<<<<<<< HEAD
<<<<<<< HEAD
    if ! git rev-parse --verify "$1" > /dev/null 2>&1; then
        return
    fi
=======
>>>>>>> ec52f9a (Add clean up scripts)
=======
    if ! git rev-parse --verify "$1" > /dev/null 2>&1; then
        return
    fi
>>>>>>> 8573f05 (Introduce c-bye program)
    git checkout "$1"
    git merge --abort > /dev/null 2>&1
    git rebase --abort > /dev/null 2>&1
    git cherry-pick --abort > /dev/null 2>&1
    git reset --hard HEAD
    git clean -d -f
}

git merge --abort > /dev/null 2>&1
git rebase --abort > /dev/null 2>&1
git cherry-pick --abort > /dev/null 2>&1
git reset --hard HEAD

clean_branch test
clean_branch scripts
clean_branch base
clean_branch main
