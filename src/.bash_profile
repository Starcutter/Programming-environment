PKG_CONFIG_PATH=/usr/local/opt/opencv3/lib/pkgconfig:$PKG_CONFIG_PATH
eval $(thefuck --alias)
export PKG_CONFIG_PATH
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[34m\]\w\[\033[m\]\$ "
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Enable tab completion
source ~/.git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

