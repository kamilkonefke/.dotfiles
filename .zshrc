# Created by kamii for 5.9

# starship
eval "$(starship init zsh)"

# open .conf
alias conf="cd ~/.config/"

# open nvim
alias v="nvim"

# idk what is this
yazicd() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd "$cwd"
    fi
    rm -f -- "$tmp"
}
bindkey -s '^o' 'yazicd\n'
