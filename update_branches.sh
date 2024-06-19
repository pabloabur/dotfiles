#!/bin/bash

# This script cherry-picks a specified number of commits from the current branch 
# and applies them to a target branch. The script expects two arguments:
# 1. The target branch where the commits will be applied.
# 2. The number of commits to cherry-pick from the current branch.

# Usage:
# ./script_name.sh <target_branch> <num_commits>
#
# Example:
# ./script_name.sh feature-branch 5
#
# This example will cherry-pick the last 5 commits from the current branch and 
# apply them to the 'feature-branch'.
#
# I use this script to update my dotfiles that are to be used in other operating
# systems. Accordingly, there is one branch for each operating system.

target_branch="$1"
num_commits="$2"

commit_hashes=($(git log --format='%H' --reverse -n ${num_commits}))

git checkout "$target_branch"

git pull

for commit_hash in "${commit_hashes[@]}"; do
    git cherry-pick "$commit_hash"
done

git push origin $target_branch

git checkout -
