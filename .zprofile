export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

if [ ! -d "$HOME/Repos/znap" ]; then
  git clone --depth 1 https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
  source ~/Repos/znap/znap.zsh
  
  # Run znap install once to get plugins
  znap install zdharma-continuum/fast-syntax-highlighting zsh-users/zsh-autosuggestions
fi
