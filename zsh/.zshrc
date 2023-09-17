# Basic Path Setup
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# History Settings
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Enable Extended Globbing
setopt EXTENDED_GLOB

# Basic Prompt
PROMPT="%n@%m %~ %# "

# Enable Vim Mode
bindkey -v

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lah'

# Plugins or Additional Features (Optional)
# Add any plugins or extra features you want here.

# Function to update the prompt indicator based on Vim mode
function zle-line-init zle-keymap-select {
  case $KEYMAP in
    vicmd)
      # Set prompt for NORMAL mode (replace "NORMAL" with your choice of indicator)
      PS1="%F{red}[N]%f %n@%m %~ %# "
      ;;
    main|viins)
      # Set prompt for INSERT mode (replace "INSERT" with your choice of indicator)
      PS1="%F{green}[I]%f %n@%m %~ %# "
      ;;
    esac
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# Initialize the prompt to make sure it shows up immediately
PS1="%F{green}[INSERT]%f %n@%m %~ %# "
