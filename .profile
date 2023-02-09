# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set flutter environment
export FLUTTER_STORAGE_BASE_URL="https://storage.flutter-io.cn/"
export PUB_HOSTED_URL="https://pub.flutter-io.cn/"

export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo'

export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$HOME/fvm/default/bin"

# set java
# export JAVA_HOME='/home/jinzhaolu/libs/java/jdk1.8.0_341'
export JAVA_HOME='/home/jinzhaolu/libs/java/jdk-11.0.2'
export PATH="$PATH":"$JAVA_HOME/bin"

# Added by Toolbox App
export PATH="$PATH:/home/jinzhaolu/.local/share/sJetBrains/Toolbox/scripts"

# # Set PATH, MANPATH, etc., for Homebrew.
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

