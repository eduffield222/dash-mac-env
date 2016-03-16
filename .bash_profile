# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

source ~/.profile
source ~/.ssh-keys

alias glo='git log --pretty=oneline --graph --abbrev-commit --decorate'

export NVM_DIR="$HOME/.nvm"
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

export PS1="\w$ "
alias ll='ls -lashG'
alias ls='ls -G'

############## Dash Command Center #####################
#   What does this do?
#   1.) setup easy to remember dash commands for debugging dash and running masternodes
#   2.) maintain production and development environments
#   3.) easily check on nodes, upgrade, repair, etc (--zapwallettxes etc)
#
#
#   REQUIREMENTS:
#
#   -- lldb
#   -- .dash through .dash9 for regtest mode
#
#
#


#
# ATTENTION: 
# **** change these each project, so that the default is correct usually ****
#

HOMEUSER="evan"
DASHLOG="mnbudget,mnpayments"
DASHDEBUG="lldb --"
DASHBINARY="./dash-qt"

cmd_dash()
{
  if [ "$1" = "help" ]; then
    echo "dash command center";
    echo "  example: dash set debug on"
    echo "-----------------------------------";
    echo "";
    echo "setting up environment:";
    echo "  set origin originname";
    echo "  set debug on|off (lldb mode)";
    echo "  set mode qt|daemon";
    echo "  set log options";
    echo "";
    echo "     General Options: addrman, alert, bench, coindb, db,";
    echo "           lock, rand, rpc, selectcoins, mempool, mempoolrej, ";
    echo "           net, proxy, prune, http, libevent, tor, zmq, ";
    echo "     Dash Options (or specifically: darksend, instantx, "
    echo "           masternode, keepass, mnpayments, mnbudget)"; 
    echo "";
    echo "starting/stopping the client:";
    echo "  start";
    echo "  stop";
    echo "";
    echo "misc:";
    echo "  cd";
    echo "  tail";
    echo "  clear";
    echo "  commit";
    #echo "  upgrade" #update to most recent version
    #echo "  status"  #shows status of the node (check against external sites, etc)
    #echo "  repair"  #add a few of the various repair commands for bitcoin
  fi;

  if [ "$1 $2" = "set origin" ]; then DASHORIGIN=$3; fi;
  
  #---- debug mode off/on
  if [ "$1 $2 $3" = "set debug on" ]; then DASHDEBUG="lldb --"; echo "debug mode on"; fi;
  if [ "$1 $2 $3" = "set debug off" ]; then DASHDEBUG=""; echo "debug mode off"; fi;
  if [ "$1 $2" = "set debug" ]; then return; fi;

  #---- log mode (dash logging options)
  if [ "$1 $2 $3" = "set log help" ]; then 

    echo "     General Options: addrman, alert, bench, coindb, db,";
    echo "           lock, rand, rpc, selectcoins, mempool, mempoolrej, ";
    echo "           net, proxy, prune, http, libevent, tor, zmq, ";
    echo "     Dash Options (or specifically: darksend, instantx, "
    echo "           masternode, keepass, mnpayments, mnbudget)"; 
    return;

  return; fi;
  
  if [ "$1 $2" = "set log" ]; then DASHLOG="$3"; echo "log mode on : $3"; return; fi;

  #---- setup binaries
  if [ "$1 $2 $3" = "set mode qt" ]; then DASHBINARY="./dash-qt"; fi;
  if [ "$1 $2 $3" = "set mode daemon" ]; then DASHBINARY="./dashd"; fi;
  if [ "$1 $2" = "set mode" ]; then return; fi;

  if [ "$1 $2 $3" = "set branch" ]; then DASHBINARY="$4"; fi;

  #---- generic commands
  if [ "$1" = "start" ]; then $DASHDEBUG $DASHBINARY --datadir=/Users/$HOMEUSER/.dash --debug=$DASHLOG -logthreadnames; fi;
  if [ "$1" = "cd" ]; then cd ~/Desktop/dash-develop; fi;
  if [ "$1" = "tail" ]; then tail -f /Users/$HOMEUSER/.dash/debug.log; fi;
  if [ "$1" = "clear" ]; then rm ~/.dash*/debug.log; fi;
  if [ "$1" = "commit" ]; then git commit -a; fi;

}

alias dash=cmd_dash

alias dash_c='./dash-cli --datadir=/Users/$HOMEUSER/.dash --daemon'
alias dash_c1='./dash-cli --datadir=/Users/$HOMEUSER/.dash --daemon'
alias dash_c2='./dash-cli --datadir=/Users/$HOMEUSER/.dash2 --daemon'
alias dash_c3='./dash-cli --datadir=/Users/$HOMEUSER/.dash3 --daemon'
alias dash_c4='./dash-cli --datadir=/Users/$HOMEUSER/.dash4 --daemon'
alias dash_c5='./dash-cli --datadir=/Users/$HOMEUSER/.dash5 --daemon'
alias dash_c6='./dash-cli --datadir=/Users/$HOMEUSER/.dash6 --daemon'
alias dash_c7='./dash-cli --datadir=/Users/$HOMEUSER/.dash7 --daemon'
alias dash_c8='./dash-cli --datadir=/Users/$HOMEUSER/.dash8 --daemon'
alias dash_c9='./dash-cli --datadir=/Users/$HOMEUSER/.dash9 --daemon'

alias dash-qt='./dash-qt --datadir=/Users/$HOMEUSER/.dash -logthreadnames'
alias dash-qt1='./dash-qt --datadir=/Users/$HOMEUSER/.dash'
alias dash-qt2='./dash-qt --datadir=/Users/$HOMEUSER/.dash2'
alias dash-qt3='./dash-qt --datadir=/Users/$HOMEUSER/.dash3'
alias dash-qt4='./dash-qt --datadir=/Users/$HOMEUSER/.dash4'
alias dash-qt5='./dash-qt --datadir=/Users/$HOMEUSER/.dash5'
alias dash-qt6='./dash-qt --datadir=/Users/$HOMEUSER/.dash6'
alias dash-qt7='./dash-qt --datadir=/Users/$HOMEUSER/.dash7'
alias dash-qt8='./dash-qt --datadir=/Users/$HOMEUSER/.dash8'
alias dash-qt9='./dash-qt --datadir=/Users/$HOMEUSER/.dash9'

alias dash_t0d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash --daemon'
alias dash_t1d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash --daemon'
alias dash_t2d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash2 --daemon'
alias dash_t3d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash3 --daemon'
alias dash_t4d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash4 --daemon'
alias dash_t5d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash5 --daemon'
alias dash_t6d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash6 --daemon'
alias dash_t7d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash7 --daemon'
alias dash_t8d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash8 --daemon'
alias dash_t9d='lldb -- ./dashd --datadir=/Users/$HOMEUSER/.dash9 --daemon'

alias dash_c0d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash --daemon'
alias dash_c1d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash --daemon'
alias dash_c2d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash2 --daemon'
alias dash_c3d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash3 --daemon'
alias dash_c4d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash4 --daemon'
alias dash_c5d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash5 --daemon'
alias dash_c6d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash6 --daemon'
alias dash_c7d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash7 --daemon'
alias dash_c8d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash8 --daemon'
alias dash_c9d='lldb -- ./dash-cli --datadir=/Users/$HOMEUSER/.dash9 --daemon'

alias dash-qtd='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash -logthreadnames'
alias dash-qt1d='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash'
alias dash-qt2d='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash2'
alias dash-qt3d='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash3'
alias dash-qt4d='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash4'
alias dash-qt5d='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash5'
alias dash-qt6d='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash6'
alias dash-qt7d='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash7'
alias dash-qt8d='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash8'
alias dash-qt9d='lldb -- ./dash-qt --datadir=/Users/$HOMEUSER/.dash9'



dashcmd() {
 dash_c2 $@
 dash_c3 $@
 dash_c4 $@
 dash_c5 $@
 dash_c6 $@
 dash_c7 $@
 dash_c8 $@
 dash_c9 $@
}
alias cmd=dashcmd

ulimit -c unlimited

alias startall='ulimit -c unlimited && dash_t2 --daemon & dash_t3 --daemon & dash_t4 --daemon & dash_t5 --daemon & dash_t6 --daemon & dash_t7 --daemon & dash_t8 --daemon & dash_t9 --daemon'
alias stopall='dash_c2 stop & dash_c3 stop & dash_c4 stop & dash_c5 stop & dash_c6 stop & dash_c7 stop & dash_c8 stop & dash_c9 stop'
alias startallmn='dash_c2 masternode start & dash_c3 masternode start & dash_c4 masternode start & dash_c5 masternode start & dash_c6 masternode start & dash_c7 masternode start & dash_c8 masternode start & dash_c9 masternode start'
alias g='dash_c2 setgenerate true'
alias g2='dash_c2 setgenerate true'
alias g3='dash_c3 setgenerate true'
alias g4='dash_c4 setgenerate true'
alias g5='dash_c5 setgenerate true'
alias g6='dash_c6 setgenerate true'
alias g7='dash_c7 setgenerate true'
alias g8='dash_c8 setgenerate true'

source ~/.git-prompt.sh

#  Customize BASH PS1 prompt to show current GIT repository and branch.
#  by Mike Stewart - http://MediaDoneRight.com

#  SETUP CONSTANTS
#  Bunch-o-predefined colors.  Makes reading code easier than escape sequences.
#  I don't remember where I found this.  o_O

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"


# This PS1 snippet was adopted from code for MAC/BSD I saw from: http://allancraig.net/index.php?option=com_content&view=article&id=108:ps1-export-command-for-git&catid=45:general&Itemid=96
# I tweaked it to work on UBUNTU 11.04 & 11.10 plus made it mo' better

export PS1=$IBlack$Time12h'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$IRed'"$(__git_ps1 " {%s}"); \
  fi) '$BYellow$PathShort'\$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Yellow$PathShort'\$ "; \
fi)'


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting



##
# Your previous /Users/$HOMEUSER/.bash_profile file was backed up as /Users/$HOMEUSER/.bash_profile.macports-saved_2015-05-29_at_08:18:10
##

# MacPorts Installer addition on 2015-05-29_at_08:18:10: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
