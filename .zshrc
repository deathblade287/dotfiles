# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh-my-zsh initialization
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME='robbyrussell
ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

# aliases
alias cd="z"
alias ls="eza"
# alias ls -la="eza -la"
# alias exa="eza"
# alias exa -la="eza -la"
alias neofetch="neofetch --ascii ~/.config/neofetch/computer"
alias calc="qalc"
# alias aur-list="for x in `pacman -Qm`; do yay -Ss "$x" | grep 'aur/'; done"
alias yay="paru"

# alias nvim="kitty -o window_padding_width=0 nvim"

alias doom="~/.config/emacs/bin/doom run"
alias doom-sync="~/.config/emacs/bin/doom sync"
alias doom-update="~/.config/emacs/bin/doom upgrade"
alias doom-doctor="~/.config/emacs/bin/doom doctor"
alias doom-env="~/.config/emacs/bin/doom env"
alias doom-build="~/.config/emacs/bin/doom build"

alias zsh-add='nvim ~/dotfiles/.zshrc'
alias zsh-push='source ~/dotfiles/.zshrc'

alias hypr="nvim ~/.config/hypr/hyprland.conf"

alias git-find="find . -type d -exec test -d '{}/.git' \; -print"

alias vim="nvim"
alias vi="nvim"
alias btop="btop --utf-force"
alias droplet="ssh root@142.93.223.37"
alias focus="conda activate fooocus && python /home/deathblade287/Documents/Fooocus/entry_with_update.py"
alias clock="tty-clock -s -c -d 0.5"

alias tmux="tmux -u"

# adding directories to PATH
export PATH="~/.config/emacs/bin:$PATH"

# typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
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
# <<< conda initialize <<<

# node version manager (nvm config)
source /usr/share/nvm/init-nvm.sh

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/deathblade287/google-cloud-sdk/path.zsh.inc' ]; then . '/home/deathblade287/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/home/deathblade287/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/deathblade287/google-cloud-sdk/completion.zsh.inc'; fi

# command(s) to run on terminal emulator startup

eval "$(zoxide init zsh)"


if [ "$XDG_SESSION_TYPE" = "tty" ] ; then
    bash
fi

source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh

# clear
neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
