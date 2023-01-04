set -x KUBECONFIG ~/.kube/config:$KUBECONFIG

set -x SSH_AUTH_SOCK $HOME/.ssh/agent.sock
set ALREADY_RUNNING (ps -auxww | grep -q "[n]piperelay.exe -ei -s //./pipe/openssh-ssh-agent"; echo $status)

if [ $ALREADY_RUNNING != "0" ]
	rm -f $SSH_AUTH_SOCKET
    setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"/mnt/d/Programs/npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork &
	disown
end

string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
