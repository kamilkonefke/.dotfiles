# kamii.zsh-theme

function git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    echo " ($branch)"
  fi
}

PROMPT='%F{yellow}%~%f$(git_branch) 
λ '
