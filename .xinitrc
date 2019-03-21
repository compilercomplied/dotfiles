[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
exec i3

source $HOME/.bashrc
