# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="$HOME/.local/state"   # o tu directorio de run user
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export EDITOR="emacs -nw"
export VISUAL="emacs -nw"

#zmodload zsh/zprof

# Historial
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Autocompletado
autoload -Uz compinit
compinit

# Plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Tema
source ~/.config/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# Movimiento y navegación
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

# Configuración de Powerlevel10k
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Aliases y funciones personalizadas
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/functions.zsh

# Modo de edición estilo Vim
#bindkey -v
#colp
tewisay Arch btw
