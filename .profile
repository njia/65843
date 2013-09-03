#  Note that a variable may require special treatment
#+ if it will be exported.


# DARKGRAY='\e[1;30m'
# LIGHTRED='\e[1;31m'
# GREEN='\e[32m'
# YELLOW='\e[1;33m'
# LIGHTBLUE='\e[1;34m'
# NC='\e[m'

# PCT="\`if [[ \$EUID -eq 0 ]]; then T='$LIGHTRED' ; else T='$LIGHTBLUE'; fi; 
# echo \$T \`"

# PS1="\n$GREEN[\w] \n$DARKGRAY($PCT\t$DARKGRAY)-($PCT\u$DARKGRAY)-($PCT\!
# $DARKGRAY)$YELLOW-> $NC"

#  Variables PCT and PS1 can be merged into a new PS1 variable:
#  PS1="\`if [[ \$EUID -eq 0 ]]; then PCT='\[$LIGHTRED\]';
#  else PCT='\[$LIGHTBLUE\]'; fi; 
#  echo '\[$DARKGRAY\][\[$GREEN\]\t\[$DARKGRAY\]]-['\$PCT'\u\[$YELLOW\]@\[$GREEN\]\h:\w\[$DARKGRAY\]]\[$YELLOW\]: \[$NC\]'\`"
#  The trick is to use strong quoting for parts of old PS1 variable.

export PS1="[\u@\h] \w : "
export TERM=xterm
export ARCHFLAGS="--arch x86_64"
export PATH=/usr/local/mysql/bin:/usr/local/mysql/support-files:/opt/local/bin:/opt/local/sbin:$PATH

alias vi=vim
alias ll='ls -l'


# MacPorts Installer addition on 2013-07-31_at_10:50:52: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.

