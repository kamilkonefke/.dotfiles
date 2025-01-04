export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR=nvim
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh

yazicd() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd "$cwd"
    fi
    rm -f -- "$tmp"
}

function fzf_search() {
    cd "$(find ~/Projects -maxdepth 1 | fzf)"
}

alias ll="ls -l"

alias conf="cd ~/.config/"
alias v="nvim"
alias mixer="ncpamixer"
alias disk-util="ncdu"

bindkey -r '^b'
bindkey -r '^o'
bindkey -s '^b' 'fzf_search\n'
bindkey -s '^o' 'yazicd\n'
