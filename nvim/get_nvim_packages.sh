#!/bin/bash

urls=(
    "git@github.com:nvim-telescope/telescope.nvim.git"
    "git@github.com:nvim-lua/plenary.nvim.git"
    "git@github.com:BurntSushi/ripgrep.git"
    
    "git@github.com:rose-pine/neovim.git"
    
    "git@github.com:nvim-treesitter/nvim-treesitter.git"
    
    "git@github.com:neovim/nvim-lspconfig.git"
    
    "git@github.com:vimwiki/vimwiki.git"
    
    "git@github.com:echasnovski/mini.surround.git"
    
    "git@github.com:echasnovski/mini.completion.git"

    "git@github.com:Exafunction/codeium.vim.git"
)

folder_urls=(
    "nvim-telescope|telescope.nvim.git"
    "nvim-telescope|plenary.nvim.git"
    "nvim-telescope|ripgrep.git"
    "rose-pine|neovim.git"
    "nvim-treesitter|nvim-treesitter.git"
    "nvim-lspconfig|nvim-lspconfig.git"
    "vimwiki|vimwiki.git"
    "surround|mini.surround.git"
    "completion|mini.completion.git"
    "codeium|codeium.vim.git"
)

root_folder=~/.config/nvim/pack

# Function to create folder and execute commands
process_folder() {
    local url=$1
    local folder_path="$2/start"

    # Check if folder already exists
    if [ ! -d "$folder_path" ]; then
        # Create the folder
        mkdir -p "$folder_path"
    fi

    # Execute commands in the folder
    cd "$folder_path"
    echo "Executing commands in folder: $folder_path"

    # Example command: clone the repository
    git clone "$url"

    # Add your desired commands here for each folder

    cd ../../
}

# Loop through the URLs and process each one
for url in "${urls[@]}"; do
    for folder_url in "${folder_urls[@]}"; do
        folder=${folder_url%|*}
        url_pattern=${folder_url#*|}

        if [[ $url == *"$url_pattern" ]]; then
            folder_path="$root_folder/$folder"
            process_folder "$url" "$folder_path"
            break
        fi
    done
done
