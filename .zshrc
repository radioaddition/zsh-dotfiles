# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Variables
export EDITOR=/usr/bin/nvim
export GUIX_LOCPATH="$HOME/.guix-profile/lib/locale"

# Plugin Manager (Antigen)
source ~/.zsh/antigen.zsh

# Themes
antigen theme romkatv/powerlevel10k

# Plugins
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle z-shell/F-Sy-H --branch=main

# Load
antigen apply

# Aliases
alias btop="btop --utf-force"
# alias sudo=doas
alias pridefetch='hyfetch'
alias neofetch='fastfetch'
alias ls="ls -A"
alias emergedown="sudo tail -f /var/log/emerge-fetch.log"
alias verbemerge="sudo tail -f /var/log/emerge.log"
alias docker-compose="docker compose"
alias pnpm="pnpm-bin"
alias throwaway-arch="distrobox-ephemeral --image a12e8cd19953"
alias throwaway-deb="distrobox-ephemeral --image 483839ac6015"

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
