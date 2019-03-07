/usr/bin/ssh-add -k ~/.ssh/id_rsa

eval "$(rbenv init -)"

export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/Users/jobo.danque/DevApps/apache-maven-3.3.9
export PATH=$PATH:$M2_HOME/bin
export PATH=/home/ec2-user/.local/bin:$PATH

# Coloured man pages using less as pager
man() {
    env \
	      LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	      LESS_TERMCAP_md=$(printf "\e[1;31m") \
	      LESS_TERMCAP_me=$(printf "\e[0m") \
	      LESS_TERMCAP_se=$(printf "\e[0m") \
	      LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	      LESS_TERMCAP_ue=$(printf "\e[0m") \
	      LESS_TERMCAP_us=$(printf "\e[1;36m") \
	      man "$@"
}

TERM=xterm-256color

# Aliases
alias ls="colorls -A"   

## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'

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
alias gitchangelog='echo "**Changelog**:"; git log --no-merges --invert-grep --grep=maven-release-plugin --pretty=format:"* %h %s"'

##jump servers##
alias jump_dev='ssh -A jmdanque@10.133.179.243'
alias jump_test='ssh -A viewer@50.112.56.135'
alias jump_sandbox='ssh -A viewer@52.221.47.143'

alias tamad='bash $HOME/procrastinate.sh'

cd()
{
    builtin cd $@
    ls
}





# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰─%K{green}%F{black}$0%K{green}%F{black} \uf155 %f%F{green}%k\ue0b0%f "

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue0b1'
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
#POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b8 '
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue0b8 '
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b6'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b6'

# Dir colours
POWERLEVEL9K_DIR_HOME_BACKGROUND='009'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='196'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='232'

POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='009'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=5
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_left"

# OS segment
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_LINUX_ICON='%F{cyan} \uf303 %F{white} arch %F{cyan}linux%f'

# VCS icons
POWERLEVEL9K_VCS_GIT_ICON=$'\ue60a '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113 '
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# VCS colours
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='blue'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green1'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'

# VCS CONFIG
POWERLEVEL9K_SHOW_CHANGESET=false

# Status
POWERLEVEL9K_OK_ICON=$'\uf164'
POWERLEVEL9K_FAIL_ICON=$'\uf165'
POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf165'

# Battery
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6'

# Time
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uf073 %d/%m/%y}"
POWERLEVEL9K_TIME_BACKGROUND='white'

# User with skull
user_with_skull() {
    echo -n "\ufb8a $(whoami)"
}
POWERLEVEL9K_CUSTOM_USER="user_with_skull"


# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon custom_user root_indicator dir)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time battery)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)
POWERLEVEL9K_MODE='nerdfont-complete'

source  ~/powerlevel9k/powerlevel9k.zsh-theme

