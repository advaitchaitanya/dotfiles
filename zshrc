# Add Homebrew's executable directory to the front of the PATH
export PATH=/usr/local/bin:$PATH

# Add rbenv to ZSH so that it loads every time you open a terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Customize the prompt for Git
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
precmd () { __git_ps1 "%m" "%% " " %s " }

# Set Vim as default editor
export EDITOR='$VISUAL'
export VISUAL=vim

# Edit
alias rc='vim ~/.zshrc'

# Reload
alias src='source ~/.zshrc'

# Git
alias g='git'

# Output one filename per line
alias ls='ls -1a'

# Clear screen
alias c='clear'

# Remove history file
alias remove-history='rm ~/.zsh_history'

# Start a Ruby server in the current directory
alias serve='ruby -run -e httpd . -p 8000'

# Erase current session history
function erase_history { local HISTSIZE=0; }
