export LOCAL_ZSH="$HOME/.zsh"
export ZSH="$LOCAL_ZSH/omz"exp

ort PATH=$PATH:$HOME/.spicetify

export PATH="$PATH:$HOME/.local/bin"

export PATH="$PATH:$HOME/Documents/coding/AnnePro2-Tools/target/release/bin"
. "$HOME/.cargo/env"

export PATH="$PATH:$HOME/.local/share/bob/nvim-bin"
export PATH="$HOME/flutter/bin:$PATH"

export JAVA_HOME=/opt/android-studio/jbr
export ANDROID_HOME="$HOME/Android/Sdk"
export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"
export PATH=$NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin:$PATH

export CC_aarch64_linux_android=$NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android28-clang
export CXX_aarch64_linux_android=$NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android28-clang++
export AR_aarch64_linux_android=$NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-ar
export LD_aarch64_linux_android=$NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/ld.lld
