<<DONE
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list

#sudo apt-get update 
sudo apt-get install --yes --force-yes docker-engine python-pip vim exuberant-ctags 
sudo pip install docker-compose jupyter scikit-learn matplotlib

(cd ~; git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1)

if ! $GIT_PROMPT_ONLY_IN_REPO; then
echo Adding beautiful git
cat << EOF >> ~/.bashrc
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh
EOF
. ~/.bashrc
fi

echo "After"

[[ ! -f ~/.vimrc ]] && cp .vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
sudo apt-get install --yes build-essential cmake python-dev python3-dev python-apt python-pycurl
#(cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer)


###JAVA###
sudo apt-get install --yes python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install --yes oracle-java8-installer
###JAVA###


###AWS###
sudo pip install --ingore-installed awsebcli
sudo pip install --ignore-installed six awsc
###AWS###

wget https://download.jetbrains.com/python/pycharm-professional-2016.2.3.tar.gz
mkdir -p ~/programs
tar -C ~/programs -xzvf *.tar.gz
DONE

