mkdir ~/bashcompletion
curl -o ~/bashcompletion/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o ~/bashcompletion/tmuxinator.bash https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash
cd ~/repos/vms
chmod +x setuptmux.sh
./setuptmux.sh 2.9a
chmod +x setuptmuxinator.sh
./setuptmuxinator.sh
if [ -z "$1" ] || [ $1 == "spaces" ]
  then
    echo 'source ~/repos/vms/.vimrc_customizations_tabs_as_spaces' >>~/.vimrc
fi
if [ ! -z "$2" ]
  then
    git config --global user.name "$2"
fi
echo 'source ~/repos/vms/.vimrc_customizations' >>~/.vimrc
echo 'source ~/repos/vms/.bash_customizations' >>~/.bash_profile
