#!/bin/bash

LINE_TO_ADD_BASH='eval "$(starship init bash)"'
LINE_TO_ADD_ZSH='eval "$(starship init zsh)"'
TARGET_FILE_ZSH="$HOME/.zshrc"
TARGET_FILE_BASH="$HOME/.bashrc"


# Function to add a line to a specified file if it doesn't already exist
add_line_to_file() {
    local line_to_add="$1"
    local target_file="$2"

    # Check if the line already exists in the file
    if ! grep -Fxq "$line_to_add" "$target_file"; then
        # Append the line to the end of the file
        echo "$line_to_add" >> "$target_file"
        echo "Added '$line_to_add' to $target_file"
    else
        echo "'$line_to_add' is already present in $target_file"
    fi
}

# Download the script to /tmp using wget
wget https://starship.rs/install.sh -O /tmp/install.sh

# Make the script executable
chmod +x /tmp/install.sh

# Execute the script
/tmp/install.sh

# Check if zsh is installed using the command -v method
if command -v zsh &> /dev/null; then
    add_line_to_file "$LINE_TO_ADD_ZSH" "$TARGET_FILE_ZSH"
fi

add_line_to_file "$LINE_TO_ADD_BASH" "$TARGET_FILE_BASH"


