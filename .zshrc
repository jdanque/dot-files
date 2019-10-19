/usr/bin/ssh-add -k ~/.ssh/id_rsa

export ZSH="/Users/jobodanque/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="robbyrussell"

plugins=(
  git
  gradle
  ng
  npm
  yarn
  osx)

source $ZSH/oh-my-zsh.sh

##############
# Aliases
##############
alias lc="colorls -A"   

## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'

alias copypath="pwd | pbcopy"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

## Maven aliases##
alias mvnec='mvn eclipse:clean'
alias mvnee='mvn eclipse:eclipse'
alias mvnci='mvn clean install -U'
alias mvncint='mvn clean install -U -DskipTests'
alias mvndone='osascript -e "tell app \"System Events\" to display dialog \"MAVEN BUILD COMPLETED\"" '
alias mvnsbr='mvn clean spring-boot:run'
alias mvng='mvnec;mvnee;mvncint;mvndone'
alias mvndfind='mvn dependency:tree -Dverbose -Dincludes='

##Git aliases##
alias gits='git status'
alias gitco='git checkout'
alias gitcob='git checkout -b'
alias gitac='git add -A;git commit -m'
alias gitc='git clone'
alias gitpom='git pull origin master'
alias gitpo='git pull origin'
#alias gitchangelog='echo "<h1>Changelog:</h1>"; git log --no-merges --invert-grep --grep=maven-release-plugin --pretty=format:"* %h %s <br/> %+b"'

cd(){
    builtin cd $@
    l
}

##############
# Powerlevel9k Theme
##############

user_with_skull() {
    echo -n "\ufb8a $(whoami)"
}
POWERLEVEL9K_CUSTOM_USER="user_with_skull"

POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
#POWERLEVEL9K_BATTERY_STAGES=($'\u2581 ' $'\u2582 ' $'\u2583 ' $'\u2584 ' $'\u2585 ' $'\u2586 ' $'\u2587 ' $'\u2588 ')
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="❱ "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF054%F{073}\uF054%F{109}\uF054%f "
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\uf0fe'


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator custom_user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery dir_writable ip vpn_ip ram load background_jobs)

#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_last"
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S %d/%m/%Y}"

POWERLEVEL9K_RAM_BACKGROUND='yellow'
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="white"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="white"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="white"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_HOME_ICON='\uf7db'
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON='\uf07c'
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_TIME_ICON=""
