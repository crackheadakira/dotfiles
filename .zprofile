export ZSH="$HOME/.zsh"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

# Install theme if it doesn't exist
[[ ! -d $ZSH/powerlevel10k ]] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH/powerlevel10k

# Install plugins if they don't exist
[[ ! -d $ZSH/fsh ]] && git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $ZSH/fsh
[[ ! -d $ZSH/zsh-as ]] && git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/zsh-as
[[ ! -d $ZSH/zsh-ac ]] && git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH/zsh-ac
