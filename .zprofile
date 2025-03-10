export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

# Install oh-my-zsh if it doesn't exist
[[ ! -d $LOCAL_ZSH/omz ]] && git clone https://github.com/ohmyzsh/ohmyzsh.git $LOCAL_ZSH/omz

# Install theme if it doesn't exist
[[ ! -d $LOCAL_ZSH/powerlevel10k ]] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $LOCAL_ZSH/powerlevel10k

# Install plugins if they don't exist
[[ ! -d $LOCAL_ZSH/fsh ]] && git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $LOCAL_ZSH/fsh
[[ ! -d $LOCAL_ZSH/zsh-as ]] && git clone https://github.com/zsh-users/zsh-autosuggestions $LOCAL_ZSH/zsh-as
[[ ! -d $LOCAL_ZSH/zsh-ac ]] && git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $LOCAL_ZSH/zsh-ac
