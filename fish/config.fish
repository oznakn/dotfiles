set -g -x HOME /home/oznakn
set -g -x ANDROID_HOME $HOME/.android/sdk
set -g -x GOPATH $HOME/.go
set -g -x PATH $PATH /opt/flutter/bin $HOME/.local/bin $HOME/.cargo/bin $HOME/.android/sdk/tools/bin $HOME/.yarn/bin $HOME/.config/composer/vendor/bin

set -U FZF_LEGACY_KEYBINDINGS 0 # https://github.com/jethrokuan/fzf

alias vim='nvim'
alias ls='ls --color -h --group-directories-first'
alias lemp="sudo systemctl start php-fpm && sudo systemctl start mysqld && sudo systemctl start nginx"
alias ulemp="sudo systemctl stop php-fpm && sudo systemctl stop mysqld && sudo systemctl stop nginx"
alias halacritty='env WINIT_HIDPI_FACTOR=2.7 alacritty & disown'
alias sudo='sudo -s ' # use aliases with sudo

set -g -x CLASSPATH '.' '/usr/local/lib/antlr-4.7.2-complete.jar' $CLASSPATH

alias antlr4='java -jar /usr/local/lib/antlr-4.7.2-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'

source $HOME/.config/fish/cd.fish
cd .
