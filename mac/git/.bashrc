export CLICOLOR=1
export LSCOLORS=gacacxdxbaegedabagCaca
export EDITOR=nano

# Create alias for "ll" command, mainly for habit
alias ll="ls -Alh"

# If Git Prompt exists, setup up prompt
# Source: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
# curl -o .git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    export PS1=' \[\e[36;40m\]\u\[\e[m\]\[\e[35m\]:\[\e[m\]\[\e[33m\]\W\[\e[m\]\[\e[32m\]$(__git_ps1 "(%s)")\[\e[m\] \[\e[37m\]\\$\[\e[m\] '
else
    export PS1=" \[\e[36;40m\]\u\[\e[m\]\[\e[35m\]:\[\e[m\]\[\e[33m\]\W\[\e[m\] \[\e[37m\]\\$\[\e[m\] "
fi
