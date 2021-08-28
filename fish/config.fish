set -x KUBECONFIG ~/.kube/config:$KUBECONFIG

set -x GPG_TTY (tty)
gpgconf --launch gpg-agent
