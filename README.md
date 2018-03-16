# vms
configuration files and setup instructions for vagrant dev vms

1. vagrant init bento/ubuntu-17.10
1. set memory to 1024
1. vagrant up --provider vmware_fusion
1. mkdir ~/repos
1. git clone https://github.com/jakeplahn/vms.git
1. curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
1. chmod +x setuptmux.sh
1. ./setuptmux.sh 2.6
1. chmod +x setuptmuxinator.sh
1. ./setuptmuxinator.sh
1. `echo 'source ~/repos/vms/.bash_customizations' >>~/.bash_profile`

tools
- vim
- bash
- tmux
- tmuxinator
