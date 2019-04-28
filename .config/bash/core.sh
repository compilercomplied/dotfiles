#! /usr/bin/env bash


# --- Initialize -----------------------------------------------------------------------------
BASH_CONFIG_DIR=$HOME/.config/bash

# --- Load modules ---------------------------------------------------------------------------
# shellcheck source=/dev/null
for f in $BASH_CONFIG_DIR/utils/*; do source "$f"; done
# shellcheck source=/dev/null
for f in $BASH_CONFIG_DIR/aliases/*; do source "$f"; done
# shellcheck source=/dev/null
for f in $BASH_CONFIG_DIR/env/*; do source "$f"; done


# --- Modify $PATH ---------------------------------------------------------------------------
RUST_CARGO_BINDIR=$HOME/.cargo/bin
export PATH=$PATH:$RUST_CARGO_BINDIR
