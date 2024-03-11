# LOADING BASH IN TTY
if [ "$XDG_SESSION_TYPE" = "tty" ] ; then
    bash
fi

# OH-MY-ZSH 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

# Start ZSH Shell
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ALIASES
alias cd="z"
alias ls="eza"
alias neofetch="neofetch --ascii ~/.config/neofetch/computer"
alias yay="paru"

alias zsh-add='nvim ~/dotfiles/.zshrc'
alias zsh-push='source ~/dotfiles/.zshrc'

alias hypr="nvim ~/.config/hypr/hyprland.conf"
alias find-git-origin="find . -type d -exec test -d '{}/.git' \; -print"

alias v="nvim"
alias f="fzf"
alias fe="ranger"
alias btop="btop --utf-force"
alias focus="conda activate fooocus && python /home/deathblade287/Documents/Fooocus/entry_with_update.py"
alias clock="tty-clock -s -c -d 0.5"
alias tmux="tmux -u"
alias calc="qalc"
alias pf="neofetch"

alias ai="ollama run codellama"
alias aig="ollama run llama2-uncensored "

alias ga="git add"
alias gc="git commit"
alias gp="git push"

# DEV ENV & PROGRAMS
__conda_setup="$('/home/deathblade287/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/deathblade287/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/deathblade287/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/deathblade287/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# source /usr/share/nvm/init-nvm.sh
eval "$(zoxide init zsh)"
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# INITIAL COMMAND(S)
# neofetch
