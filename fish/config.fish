set -x KUBECONFIG ~/.kube/config:$KUBECONFIG

string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
