
#!/usr/env/bin bash

BASH_CONFIG_DIR=~/.config/bash
RUST_CARGO_BINDIR=$HOME/.cargo/bin
export PATH=$PATH:$RUST_CARGO_BINDIR

. $BASH_CONFIG_DIR/utils/bash_prompt.sh
. $BASH_CONFIG_DIR/utils/functions.sh
. $BASH_CONFIG_DIR/aliases/apps.sh
. $BASH_CONFIG_DIR/aliases/environment.sh
. $BASH_CONFIG_DIR/aliases/system_utils.sh
. $BASH_CONFIG_DIR/aliases/utilities.sh
