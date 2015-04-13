# Tmux
if [ "$PS1" != "" -a "${STARTED_TMUX:-x}" = x ]
then
    STARTED_TMUX=1; export STARTED_TMUX
    ( (tmux has-session -t Cygwin && tmux attach-session -d -t Cygwin) || (tmux new-session -s Cygwin) && exit 0)
    echo "tmux failed to start"
fi

# ssh-agent
v_source "util/sshagent"

# Euphony
export EUPHONY='/cygdrive/d/Coding/Napos-Client/Euphony'
alias cdeu='cd EUPHONY'
alias cder='cd EUPHONY/napos_app/res'
alias cddl='cd D:\\Downloads'
