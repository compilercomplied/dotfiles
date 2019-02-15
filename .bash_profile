(pgrep 'tmux|startx' || startx) > /dev/null 2>&1
xrdb /home/sine/.Xresources

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
