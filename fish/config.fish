set -g -x HOME /home/oznakn
set -g -x ANDROID_HOME $HOME/.android/sdk
set -g -x GOPATH $HOME/.go
set -g -x PATH $PATH /opt/flutter/bin $HOME/.local/bin $HOME/.cargo/bin $HOME/.android/sdk/tools/bin $HOME/.yarn/bin

source $HOME/.config/fish/cd.fish
cd .

alias ls='ls --color -h --group-directories-first'
alias lemp="sudo systemctl start php-fpm && sudo systemctl start mysqld && sudo systemctl start nginx"
alias ulemp="sudo systemctl stop php-fpm && sudo systemctl stop mysqld && sudo systemctl stop nginx"
