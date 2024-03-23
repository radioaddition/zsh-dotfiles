# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2024-03-17 15:28:36
export PATH="$PATH:/home/radioaddition/.local/bin"

# Variables
export EDITOR=/usr/bin/nvim
export GUIX_LOCPATH="$HOME/.guix-profile/lib/locale"

# Themes
source /home/radioaddition/.zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# Plugins
source /home/radioaddition/.zsh/plugins/F-Sy-H/F-Sy-H.plugin.zsh
source /home/radioaddition/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/radioaddition/.zsh/plugins/zsh-vi-mode/zsh-vi-mode.zsh

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
