if [ -z "$(pgrep ssh-agent)" ]; then
    rm -rf /tmp/ssh-agent
    eval `ssh-agent -s -a /tmp/ssh-agent`
else
    export SSH_AGENT_PID=$(pgrep ssh-agent)
    export SSH_AUTH_SOCK=/tmp/ssh-agent
fi

if [ "$(ssh-add -l)" = "The agent has no identities." ]; then
    ssh-add
fi

