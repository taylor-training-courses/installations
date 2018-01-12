# Init script for Git Bash on Windows

# Create alias for "ll" command, mainly for habit
alias ll='ls -alh'

# If Git Prompt exists, setup up prompt
# Source: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
# curl -o .git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    export PS1=' \e[36m\u\e[35m:\e[33m\W\e[32;1m $(__git_ps1 "(%s)") \e[37;1m$ \e[0m'
else
    export PS1=' \e[36m\u\e[35m:\e[33m\W \e[37;1m$ \e[0m'
fi
