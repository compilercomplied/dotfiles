(pgrep 'tmux|startx' || startx) > /dev/null 2>&1
source /home/sine/.config/bash/core.sh
xrdb /home/sine/.Xresources
bash /home/sine/.screenlayout/def.sh
