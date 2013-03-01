## Environment

# Lang
export LANG=ja_JP.UTF-8

# Editor
case $OSTYPE in
    darwin*)
        export EDITOR=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient
        ;;
    *)
        export EDITOR=vim
        ;;
esac

# Path
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export RSENSE_HOME=$HOME/.emacs.d/el-get/rsense

case $OSTYPE in
    darwin*)
        # Ruby / rbenv
        export RBENV_ROOT=/usr/local/opt/rbenv
        eval "$(rbenv init -)"
        # Python / pyenv
        export PYENV_ROOT=/usr/local/opt/pyenv
        eval "$(pyenv init -)"
        # Perl / perlbrew
        export PERLBREW_ROOT=/usr/local/perlbrew
        source $PERLBREW_ROOT/etc/bashrc
        # Node / nodebrew
        export PATH=$HOME/.nodebrew/current/bin:$PATH
        eval "$(npm completion)"
        # Haskell
        export PATH=$HOME/.cabal/bin:$PATH
        # Android
        export ANDROID_HOME=/usr/local/var/lib/android-sdk
        # Gist
        export GISTY_DIR=$HOME/Dropbox/Gist
        ;;
    linux*)
        # Ruby
        export PATH=$PATH:/var/lib/gems/1.9.1/bin
        ;;
esac

typeset -U PATH
