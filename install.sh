
echo "Starting dotfiles installation and setup..."

echo "Installing essential packages..."

sudo pacman -Syu --needed git stow hyprland waybar waypaper kitty rofi mako btop gtk3 fontconfig kanshi nwg-displays

mkdir -p ~/.config

echo "Linking dotfiles with GNU Stow..."

cd "$(dirname "$0")"

stow -v hypr-rice

echo "Dotfiles installed and applied successfully!"
