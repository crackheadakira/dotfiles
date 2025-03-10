# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

CASE_SENSITIVE="true"

# Setup ZSH history
HISTSIZE=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS  # Ignore duplicate commands in history
setopt HIST_FIND_NO_DUPS # Don't show duplicates when searching history
setopt HIST_SAVE_NO_DUPS # Don't save duplicate commands to history file

source $LOCAL_ZSH/powerlevel10k/powerlevel10k.zsh-theme
source $LOCAL_ZSH/fsh/fast-syntax-highlighting.plugin.zsh
source $LOCAL_ZSH/zsh-as/zsh-autosuggestions.zsh
source $LOCAL_ZSH/zsh-ac/zsh-autocomplete.plugin.zsh

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
alias cat='bat -pp'
alias l='ls -als'

# Disable zsh-autocompletion on paste
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

 pastefinish() {
   zle -N self-insert $OLD_SELF_INSERT
 }

zstyle ':zle:up-line-or-beginning-search' leave-cursor false
zstyle ':zle:down-line-or-beginning-search' leave-cursor false

zstyle ':bracketed-paste-magic' paste-init pasteinit
zstyle ':bracketed-paste-magic' paste-finish pastefinish

zle -N menu-search
zle -N recent-paths

# Add Didder
export PATH="$HOME/didder/:$PATH"
export PATH="/home/akira/.cache/.bun/bin:$PATH"

# pnpm
export PNPM_HOME="/home/akira/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
