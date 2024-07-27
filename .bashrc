# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Check if Zsh is installed and available
# if [ -x "$(command -v zsh)" ]; then
#     # Set Zsh as the default shell if it's available
#     export SHELL=$(command -v zsh)
#     exec "$(command -v zsh)" -l  # Start Zsh as a login shell
# fi

# Set wallpaper
# Function to set wallpaper (example for GNOME)
# set_wallpaper() {
#     local wallpaper_path=$1
#     gsettings set org.gnome.desktop.background picture-uri "file://$wallpaper_path"
# }
# set_wallpaper "wallpaper.jpg"

# Git config
git config --global user.name "reg-era"
git config --global user.email "ilyass.med.fkh@gmail.com"

# Git aliases
alias gco='git checkout'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gbr='git branch'
alias gpl='git pull'
alias gps='git push'
alias gst='git status'
alias glg='git log --graph --oneline --decorate --all'
alias gds='git diff --staged'

# Git branch prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Set PS1 prompt with Git branch information
PS1=' \[\e[38;5;27;1;4m\]\u\[\e[0;38;5;33m\]@\[\e[38;5;39;1;3m\]\h\[\e[0m\] \[\e[38;5;45;1m\]\w\[\e[0m\]\[\e[1;38;5;196m\]$(parse_git_branch)\[\e[0m\] \[\e[38;5;51m\]➤\[\e[0m\] '

# Set aliases
# alias ll='ls -alF'  # Uncomment if needed
alias ..='cd ..'
alias grep='grep --color=auto'

# Add custom PATH entries if needed
# export PATH=$PATH:/path/to/your/custom/bin

# Add custom environment variables
# export EDITOR='nano'

# Enable programmable completion features (bash >= 4.1)
# if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#     . /etc/bash_completion
# fi

# Example: Load a virtual environment upon shell startup
# source /path/to/your/virtualenv/bin/activate

# Example: Setting Java environment variables
# export JAVA_HOME=/path/to/your/java/home
# export PATH=$JAVA_HOME/bin:$PATH

# Example: Setting Python environment variables
# export PATH=$HOME/.local/bin:$PATH

# Example: Setting Node.js environment variables
# export PATH=$HOME/nodejs/bin:$PATH

# Example: Setting Go environment variables
# export GOPATH=$HOME/go
# export PATH=$GOPATH/bin:$PATH