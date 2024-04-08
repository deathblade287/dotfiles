export PS1='\[\e[0;32m\]\u@\h:\w\$ \[\e[m\]'

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
alias r="ranger"
alias btop="btop --utf-force"
alias nf="neofetch"

alias ai="ollama run codellama"
alias aig="ollama run llama2-uncensored "

alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gs="git status"

alias tmux="tmux -u"
alias t="tmux"

alias ta="tmux attach"
alias tk="tmux kill-session"
alias tl="tmux ls"

eval "$(zoxide init bash)"

# BASH (TTY) ONLY
alias gnome="sudo systemctl start gdm"
