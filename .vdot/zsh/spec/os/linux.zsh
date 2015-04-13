# Tmux
if [ "$PS1" != "" -a "${STARTED_TMUX:-x}" = x -a "${SSH_TTY:-x}" != x ]
then
    STARTED_TMUX=1; export STARTED_TMUX
    ( (tmux has-session -t SSH && tmux attach-session -d -t SSH) || (tmux new-session -s SSH) ) && exit 0
    echo "tmux failed to start"
fi

# ssh-agent
v_source "util/sshagent"

# Service
alias sv='sudo service'
# clean memory cache
alias memclean='sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"'
