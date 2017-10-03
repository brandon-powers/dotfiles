alias

# set the prompt
PS1="\[\e[0;33m\]\u@\h:\w>\[\e[m\] "

# unset HISTFILE
export EDITOR="vim"
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
alias gup='git pull origin master ; git fetch'

gpu() { 
  git add . ; 
  git commit -a -m "$1" ; 
  git push origin "$2" ; 
};

alias lss='ls -lha'

if [ -e ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_BRANCH='\[\e[1;93m\]$(__git_ps1 "[%s] ")\[\e[0;33m\]'
    PS1="$GIT_BRANCH$PS1"
fi
### test
