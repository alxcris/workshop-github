#!/bin/sh

reset_branch_to_remote()
{
<<<<<<< HEAD
    if ! git rev-parse --verify "$1" > /dev/null 2>&1; then
        return
    fi
=======
>>>>>>> ec52f9a (Add clean up scripts)
    git checkout "$1"
    git reset --hard "$2"/"$1"
}

./clean-all.sh

<<<<<<< HEAD
git fetch origin
=======
>>>>>>> ec52f9a (Add clean up scripts)
reset_branch_to_remote test origin
reset_branch_to_remote scripts origin
reset_branch_to_remote base origin
reset_branch_to_remote main origin
