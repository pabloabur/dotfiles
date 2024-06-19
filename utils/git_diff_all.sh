#!/bin/bash

# Function to check if a directory is a git repository
is_git_repo() {
    git -C "$1" rev-parse &> /dev/null
    return $?
}

# Main script
main() {
    # Check if the user provided a directory
    if [ -z "$1" ]; then
        echo "Usage: $0 <directory>"
        exit 1
    fi

    # Get the directory from the first argument
    base_dir="$1"

    # Check if the provided argument is a directory
    if [ ! -d "$base_dir" ]; then
        echo "Error: '$base_dir' is not a directory"
        exit 1
    fi

    # Iterate over all subdirectories in the specified directory
    for dir in "$base_dir"/*/; do
        # Check if the subdirectory is a git repository
        if is_git_repo "$dir"; then
            diff_output=$(git -C "$dir" diff --name-only)
            if [ -n "$diff_output" ]; then
                echo "==============================================================================="
                echo "Diff for repository: $dir"
                echo "==============================================================================="
                git -C "$dir" diff --name-only
                echo ""
            fi
        else
            echo "Skipping non-git directory: $dir"
        fi
    done
}

# Run the main script
main "$1"
