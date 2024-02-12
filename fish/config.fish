set -x KUBECONFIG ~/.kube/config:$KUBECONFIG

alias ssh="ssh.exe"
alias ssh-add="ssh-add.exe"

string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
