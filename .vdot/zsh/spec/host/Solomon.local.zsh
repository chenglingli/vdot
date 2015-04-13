# nvm
if brew list -1 | grep -q "^nvm\$"; then
    export NVM_DIR="$HOME/.nvm"
    if [[ ! -e $NVM_DIR ]]; then
        mkdir $NVM_DIR
    fi
    source "$(brew --prefix nvm)/nvm.sh"
    if [[ "$(command -v node)" == "" ]]; then
        echo "ERROR: use 'nvm alias default <version>' to setup a default node version"
    fi
else
    echo 'ERROR: nvm not found.'
fi

# pyenv & virtualenv
if [[ "$(command -v pyenv)" == "" ]]; then
    echo "ERROR: pyenv and pyenv-virtualenv not found."
else
    eval "$(pyenv init -)"
    v_source "util/autoenv"
    autoenv_init
fi

# Quick cd
alias cdnapos='cd ~/Workspace/napos/napos'
alias cdwalle='cd ~/Workspace/eleme/walle'
alias cdze='cd ~/Workspace/eleme/zeus'
