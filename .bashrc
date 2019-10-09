 
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
alias gitchangelog='echo "<h1>Changelog:</h1>"; git log --no-merges --invert-grep --grep=maven-release-plugin --pretty=format:"* %h %s <br/> %+b"'


alias tamad='bash $HOME/procrastinate.sh'

