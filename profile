#  Note that a variable may require special treatment
#+ if it will be exported.

  BLACK='\e[0;30m'
  BLUE='\e0;34m'
  BROWN='\e[0;33m'
  CYAN='\e[0;36m'
  DARKGRAY='\e[1;30m'
  GRAY='\e[0;37m'
  GREEN='\e[32m'
  LIGHTBLUE='\e[1;34m'
  LIGHTCYAN='\e[1;36m'
  LIGHTGRAY='\e[0;37m'
  LIGHTGREEN='\e[1;32m'
  LIGHTPURPLE='\e[1;35m'
  LIGHTRED='\e[1;31m'
  PURPLE='\e[0;35'
  RED='\e[0;31m'
  YELLOW='\e[1;33m'
  NC='\e[m'

# PS1="\n$GREEN[\w] \n$DARKGRAY($PCT\t$DARKGRAY)-($PCT\u$DARKGRAY)-($PCT\!
# $DARKGRAY)$YELLOW-> $NC"

#  Variables PCT and PS1 can be merged into a new PS1 variable:
  PS1="\`if [[ \$EUID -eq 0 ]]; then PCT='\[$LIGHTRED\]';
  else PCT='\[$LIGHTCYAN\]'; fi;
  echo '\[$NC\]['\$PCT'\u\[$YELLOW\]@\[$GREEN\]\h:\w\[$NC\]]\[$GRAY\] : \[$NC\]'\`"
#  The trick is to use strong quoting for parts of old PS1 variable.

# export PS1="[\u@\h] \w : "
export LSCOLORS=Gxfxcxdxbxegedabagacad
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

alias vi='/opt/boxen/homebrew/bin/vim'
alias more='/usr/bin/less'
alias now='/usr/bin/date +%Y%m%d%H%M%S'
alias ls='/bin/ls -G'
alias ll='/bin/ls -Gl'


set -o vi