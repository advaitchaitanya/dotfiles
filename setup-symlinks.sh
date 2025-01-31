# Download Git prompt support
# curl -o ~/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

# Disable the "last login" message on new sessions
touch ~/.hushlogin

# Link dotfiles
ln -s ~/Documents/Projects/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Documents/Projects/dotfiles/gitignore ~/.gitignore
ln -s ~/Documents/Projects/dotfiles/vimrc ~/.vimrc
ln -s ~/Documents/Projects/dotfiles/zshrc ~/.zshrc
ln -s ~/Documents/Projects/dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/Documents/Projects/dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -s ~/Documents/Projects/dotfiles/catpuccin-frappe.toml ~/.config/alacritty/catpuccin-frappe.toml
ln -s ~/Documents/Projects/dotfiles/config.kdl ~/.config/zellij/config.kdl

# Initialize settings
source ~/.zshrc
