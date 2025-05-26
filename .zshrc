# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

compinit
eval "$(zoxide init zsh)"

# s opens sublime in the current directory, unless a file or directoy is specified
s() {
    if [ $# -eq 0 ]; then
        subl .
    else
        subl "$@"
    fi
}

# yazi wrapper
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

alias f="fd . ~ --type f --hidden --exclude .git | fzf --preview 'bat --style=numbers --color=always {} | head -100' --bind 'enter:execute(nvim {})+abort'"
alias shutdown="shutdown now"
alias h="helix"
