
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export EDITOR=nvim

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.zig:$PATH"

ZSH_THEME="kamii"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh

function fzf_search() {
    cd "$(find ~/dev -maxdepth 1 | fzf)"
}

alias ll="ls -l"
alias la="ls -la"

alias conf="cd ~/.config/"
alias v="nvim"
alias mixer="ncpamixer"
alias disk-util="ncdu"

bindkey -r '^b'
bindkey -r '^o'
bindkey -s '^b' 'fzf_search\n'
bindkey -s '^t' 'tmux\n'
bindkey -s '^e' 'v .\n'
bindkey -s '^a' 'pulsemixer\n'
