zstyle ':completion:*' completer _complete _approximate
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' complete-options true

zstyle ':completion:*' menu select

# Colors
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

setopt LIST_PACKED
setopt ALWAYS_TO_END
setopt AUTO_MENU

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
