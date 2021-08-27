if test ! -d "/run/openrc"; and test -e "/etc/wsl.conf"; sudo /sbin/run_openrc.sh; end

fish_ssh_agent

set -x KUBECONFIG ~/.kube/config:$KUBECONFIG

set -x GPG_TTY (tty)
gpgconf --launch gpg-agent
