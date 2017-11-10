
alias ssh-aws='ssh -i .ssh/aws-keys.pem ubuntu@ec2-54-194-76-80.eu-west-1.compute.amazonaws.com'

# Apps
alias vim=nvim
alias urxvt=rxvt-unicode
alias ncm='ncmpcpp -c ~/.ncmpcpp/bindings -c ~/.ncmpcpp/config'
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias tmuxk='tmux kill-session -t'
alias tmuxa='tmux attach-session -t'
alias newsbeuter='newsbeuter -C ~/.config/newsbeuter/config'
alias rss-cs='newsbeuter -C ~/.config/newsbeuter/config -u ~/.config/newsbeuter/feeds/tech'
alias rss-read='newsbeuter -C ~/.config/newsbeuter/config -u ~/.config/newsbeuter/feeds/cultural'
alias rss-cook='newsbeuter -C ~/.config/newsbeuter/config -u ~/.config/newsbeuter/feeds/cooking'
alias rss-comic='newsbeuter -C ~/.config/newsbeuter/config -u ~/.config/newsbeuter/feeds/comics'

alias load-envs='source /usr/local/bin/virtualenvwrapper.sh'

# CMDs
alias p3=python3
alias ed=editor
alias rx='xrdb ~/.config/themes/Xres/default'
alias fuck='sudo $(history -p !!)'
alias back='popd'
alias wee='bash ~/.config/tmux/sessions/irc.sh'
alias updates='bash $SCRIPTS_HOME/updates.sh'
alias where='echo $PWD'
alias mysql='mysql -u qkthr -p'
alias compress='tar -zcvf'
alias emacs='emacs -nw'
