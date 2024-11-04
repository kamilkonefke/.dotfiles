# Zsh configuration
ZSH_THEME="robbyrussell"
plugins=(git)

# variables
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"

# idk what is this
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

alias conf="cd ~/.config/"
alias v="nvim"
alias mixer="ncpamixer"
alias disk-util="ncdu"

bindkey -s '^b' 'fzf_search\n'
bindkey -s '^o' 'yazicd\n'

source <(fzf --zsh)
source $ZSH/oh-my-zsh.sh
