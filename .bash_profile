(pgrep 'tmux|startx' || startx) > /dev/null 2>&1

if xhost >& /dev/null; then
  xrdb /home/sine/.Xresources
fi

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

export PATH="$HOME/.cargo/bin:$PATH"
