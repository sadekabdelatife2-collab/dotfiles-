
echo "Starting dotfiles installation and setup..."

echo "Installing essential packages..."

sudo pacman -Syu --needed git stow hyprland waybar kitty rofi mako btop gtk3 fontconfig kanshi nwg-displays

mkdir -p ~/.config

echo "Linking dotfiles with GNU Stow..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SCRIPT_DIR"

if [ -d "hypr-rice" ]; then
    stow -v hypr-rice
    echo "Dotfiles installed and applied successfully!"
else
    echo "Error: hypr-rice directory not found in $SCRIPT_DIR"
fi
