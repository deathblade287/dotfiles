export PS1='\[\e[0;32m\]\u@\h:\w\$ \[\e[m\]'

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


alias vim="nvim"
alias vi="nvim"
alias btop="btop --utf-force"
alias droplet="ssh root@142.93.223.37"
alias focus="conda activate fooocus && python /home/deathblade287/Documents/Fooocus/entry_with_update.py"
alias clock="tty-clock -s -c -d 0.5"

alias tmux="tmux -u"

# only tty
alias gnome="sudo systemctl start gdm"

eval "$(zoxide init bash)"
