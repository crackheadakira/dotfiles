# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

zstyle ':zle:up-line-or-beginning-search' leave-cursor false
zstyle ':zle:down-line-or-beginning-search' leave-cursor false

bindkey '^[[B' down-line-or-search

[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap

znap install zdharma-continuum/fast-syntax-highlighting zsh-users/zsh-autosuggestions

plugins=(
	git
	fast-syntax-highlighting
	zsh-autosuggestions
	sudo
)

znap source marlonrichert/zsh-autocomplete

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Disable zsh-autocompletion on paste
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

 pastefinish() {
   zle -N self-insert $OLD_SELF_INSERT
 }
 zstyle :bracketed-paste-magic paste-init pasteinit
 zstyle :bracketed-paste-magic paste-finish pastefinish

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add Didder
export PATH="$HOME/didder/:$PATH"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
