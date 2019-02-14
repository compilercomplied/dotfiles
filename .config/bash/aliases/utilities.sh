

# Quickly create tarballs
alias compress='tar -zcvf'

# repeat last command using sudo
alias fuck='sudo $(history -p !!)'

# quick directory movement
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# go to the last directory you were in
alias back='cd $OLDPWD'

# display numbers in a human readable format
alias df='df -h'
alias du='du -h'
alias free='free -h'

# copy the current working directory to the clipboard
alias cpwd='pwd | xclip -selection clipboard'

# quickly find files and directory
alias ff='find . -type f -name'
alias fd='find . -type d -name'

# quickly source the .bashrc file
alias reloadbash='. ~/.bashrc'

# change the current directory to the parent directory that contains the .git folder
alias git-root='cd "`git rev-parse --show-toplevel`"'

# Wrapper around jq to print out non json lines while beautifying json
alias jsonpp='jq -R -r '"'"'. as $line | try fromjson catch $line'"'"''
