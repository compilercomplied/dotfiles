
alias load-envs='source /usr/local/bin/virtualenvwrapper.sh'

alias nuncio-lsp='load-envs; workon nuncio; pyls --tcp --host localhost --port 9009 & deactivate'
