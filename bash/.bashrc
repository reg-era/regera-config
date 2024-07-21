# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Check if Zsh is installed and available
if [ -x "$(command -v zsh)" ]; then
    # Set Zsh as the default shell if it's available
    export SHELL=$(command -v zsh)
    exec "$(command -v zsh)" -l  # Start Zsh as a login shell
fi


# REGERA prompt
PS1='\[\e[38;5;203;1m\][\[\e[0;38;5;197;4m\]\@\[\e[0;38;5;203;1m\]]\[\e[0m\] \[\e[38;5;128;1m\]\u\[\e[0;38;5;127m\]@\[\e[38;5;99;3m\]\h\[\e[0m\] \[\e[38;5;39;1m\]\w\[\e[0m\] \n\r\[\e[38;5;197m\]❱\[\e[38;5;201m\]❱\[\e[38;5;208m\]❱\[\e[0m\] '# Uncomment and modify the following lines for Git branch in prompt


# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# PS1='\u@\h \[\e[1;34m\]\w\[\e[m\]$(parse_git_branch)\$ '

# Set aliases
# alias ll='ls -alF'
alias ..='cd ..'
# alias grep='grep --color=auto'

# Add custom PATH entries if needed
# export PATH=$PATH:/path/to/your/custom/bin

# Add custom environment variables
# export EDITOR='nano'

# Enable programmable completion features (bash >= 4.1)
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# If you have additional scripts you want to run or settings to apply, you can include them here

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
