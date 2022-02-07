# Download Git prompt support
curl -o ~/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

# Disable the "last login" message on new sessions
touch ~/.hushlogin

# Link dotfiles
ln -s ~/Documents/Projects/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Documents/Projects/dotfiles/gitignore ~/.gitignore
ln -s ~/Documents/Projects/dotfiles/vimrc ~/.vimrc
ln -s ~/Documents/Projects/dotfiles/zshrc ~/.zshrc

# Initialize settings
source ~/.zshrc
