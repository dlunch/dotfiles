[ ! -d "/run/openrc" ] && sudo /sbin/run_openrc.sh

fish_ssh_agent

set -x KUBECONFIG ~/.kube/config:$KUBECONFIG

set -x GPG_TTY (tty)
gpgconf --launch gpg-agent
