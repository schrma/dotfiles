
#!/bin/bash

# Define the URL for the Nerd Font release (FiraCode in this example)
FONT_URL='https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/SourceCodePro.zip'
FONT_DIR="$HOME/.local/share/fonts"
FONT_NAME="SourceCodePro"

# Create the font directory if it does not exist
mkdir -p "$FONT_DIR"

# Download the font zip file
echo "Downloading $FONT_NAME Nerd Font..."
wget -O "$FONT_DIR/$FONT_NAME.zip" "$FONT_URL"

# Unzip the downloaded file
echo "Unzipping $FONT_NAME Nerd Font..."
unzip -o "$FONT_DIR/$FONT_NAME.zip" -d "$FONT_DIR"

# Remove the zip file
rm "$FONT_DIR/$FONT_NAME.zip"

# Refresh the font cache
echo "Refreshing font cache..."
fc-cache -fv

# Confirm installation
echo "$FONT_NAME Nerd Font installed successfully."

# List the installed font files (optional)
echo "Installed font files:"
ls "$FONT_DIR" | grep "$FONT_NAME"


