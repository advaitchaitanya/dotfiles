# Add MacPorts
export PATH=/opt/local/bin:$PATH

# Add rbenv to ZSH so that it loads every time you open a terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Edit
alias rc='nvim ~/.zshrc'

# Reload
alias src='source ~/.zshrc'

# Git
alias g='git'

# Output all files
alias ls='ls -a'

# Clear screen
alias c='clear'

# Remove history file
alias remove-history='rm ~/.zsh_history'

# Start a PHP server in the current directory
alias serve='php -S localhost:8000'

# Go to `Sites` directory on iCloud Drive
alias sites='cd /Users/advaitchaitanya/Library/Mobile\ Documents/com~apple~CloudDocs/Sites/'

# Build and serve a Jekyll site
alias js='bundle exec jekyll serve'

# Erase current session history
function erase_history { local HISTSIZE=0; }

# Starship init script
eval "$(starship init zsh)"
