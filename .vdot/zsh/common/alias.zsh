# Change Directory
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd-='cd -'

# List
alias l='ls -l --group-directories-first --block-size=K'
alias l.='ls -dlhF .[a-zA-Z0-9]* --block-size=K --color=auto'
alias la='ls -Ah --block-size=K'
alias ll='ls -ahlF --group-directories-first --block-size=K'
alias ls='ls --color=auto'

# Grep
alias grep='grep --color=auto'
alias pg='ps -ef | grep'

# Node harmony
alias nodeh='node --harmony'
