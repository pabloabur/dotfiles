#!/bin/bash
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
