chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

alias ll='ls -alF'
alias grep='grep --color=auto'

alias cr='clear'

alias gc='git commit -m '
alias gp='git push'
alias gpo='git push origin '

alias regerawall='python3 wall.py'

echo "This message is from ~/.bashrc"