set -o vi

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export PATH="/Users/ingvar/bin:$PATH"
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

export EDITOR=nvim
export PS1="\W \u: "

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export FZF_DEFAULT_COMMAND='fd --type f'

alias ..='cd ..'
alias ...='cd ../..'
alias h=history
alias e=nvim
alias vim=nvim
alias g=git
alias p=less
alias ls='ls -G'
alias ll='ls -lG'
alias lla='ls -lGa'
alias lla='ls -laG'
alias act='source ./env/bin/activate'

mkcd() {
    mkdir -p "$*"
    cd "$*"
}

[[ -r /usr/local/etc/profile.d/bash_completion.sh ]] && source /usr/local/etc/profile.d/bash_completion.sh
