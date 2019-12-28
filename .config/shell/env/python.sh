#! /usr/bin/env bash

export WORKON_HOME="$HOME/code/.virtualenvs"

export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python3"
export VIRTUALENVWRAPPER_VIRTUALENV="/usr/local/bin/virtualenv"



WRAPPER_LAZY_SCRIPT_LOCATION="/usr/local/bin/virtualenvwrapper_lazy.sh"

if [ -e $WRAPPER_LAZY_SCRIPT_LOCATION ]; then
  source $WRAPPER_LAZY_SCRIPT_LOCATION 
fi
