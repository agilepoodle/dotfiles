# .bashrc

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# completion definition
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

green=$(tput setaf 2)
reset=$(tput sgr0)

if [ -f /home/jusmonon/bin/git-prompt.sh ]; then
    source /home/jusmonon/bin/git-prompt.sh
    export PS1='\u|\[$green\]\W$(__git_ps1 "\[$reset\]|\[${bldylw}\](%s)")\[$reset\]$ '
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias g='git'
alias st='git shortlog --summary  | sort -nr'

alias mecl='mvn eclipse:clean eclipse:eclipse'
alias mci='mvn clean install -T4 -U'
alias mup='mvn -T4 versions:display-dependency-updates'
alias mpup='mvn versions:display-plugin-updates'

alias xmlgrep='grep -RH --include \*.xml '
alias jgrep='grep -RH --include \*.java '
alias propgrep='grep -RH --include \*.properties '
alias f='find . -name '

alias clean='rm -f *~'

function fngrep() {
    find . -name "$1" -exec grep -l "$2" \{\} \;
}
