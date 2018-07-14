#!/usr/bin/env bash

#    Author: Nathaniel Pisarski <nathanpisarski@gmail.com>
#    License: GPL V3 <https://www.gnu.org/licenses/gpl-3.0.en.html>
#    Description: Facilitates a usual git workflow

# QUICK EDIT: Change these values
branch=$(git rev-parse --abbrev-ref HEAD)
preamble="[cyclone]:"

export EDITOR=vim
say() {
    echo -n "$preamble $1"
}

confirm() {
    echo "$1"
    read
}

addDiff() {
    git add --all
    git add -u
}

showAestheticDiff() {
    git diff --stat HEAD
}

showDiff() {
    git diff HEAD
}

commit() {
    git commit
}

pushChanges() {
    git push
}

merge() {
    git checkout $1
    git pull
    git checkout "$branch"
    git merge $1
}

say "Starting. You are on $branch"
confirm

addDiff
showAestheticDiff

say "Continue?"
confirm

showDiff
confirm

commit

say "Would you like to push your changes?"
confirm

pushChanges

say "Would you like to merge master?"
confirm

merge master
say "Done!"
