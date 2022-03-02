alias dirs="ls -al | grep '^d'"

alias h="history"

alias update='sudo -- sh -c "apt update"'
alias upgrade='sudo -- sh -c "apt upgrade"'
alias updrade='sudo -- sh -c "apt update && apt upgrade"'

alias c='clear'

#### LS Command list
#
## Colorize the ls output ##
alias ls='ls --color=auto'
 
## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'

## Others ls commands
alias l="ls -al"
alias lf="ls -aFG"
alias lm="ls -al|more"

## Personal aliases
alias web="cd /home/novasprit/codes/web"
alias codes="cd /home/novasprit/codes"
alias shelper="cd /home/novasprit/shelper"
alias anastasis="cd /home/novasprit/anastasis"
alias anastacodes="cd /home/novasprit/anastasis/codes"
alias codanas="cd /home/novasprit/anastasis/codes"

## Switch python3 versions

alias switch-python3="sudo update-alternatives --config python3"



