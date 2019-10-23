set -o vi

export PATH=$PATH:$HOME/bin
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/php@5.6/bin:$PATH"

export EDITOR=nvim
export PS1="\W \u: "

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export CI_ENV=development
export FLASK_DEBUG=1

alias ..='cd ..'
alias ...='cd ../..'
alias h=history
alias e=nvim
alias vi=nvim
alias vim=nvim
alias g=git
alias ls='ls -G'
alias ll='ls -lG'
alias lla='ls -laG'
alias venv='source ./env/bin/activate'
alias genpassword='openssl rand -base64 32'

cheat() {
    curl cht.sh/$1
}

mkcd() {
    mkdir -p "$*"
    cd "$*"
}

[[ -r /usr/local/etc/profile.d/bash_completion.sh ]] && source /usr/local/etc/profile.d/bash_completion.sh

export PATH="$HOME/.cargo/bin:$PATH"
