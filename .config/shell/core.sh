
# --- Initialize -----------------------------------------------------------------------------
SHELL_CONFIG_DIR=$HOME/.config/shell

if test -n "$ZSH_VERSION"; then

  export SHELL_PROFILE="zsh"

  # shellcheck source=/dev/null
  . "$SHELL_CONFIG_DIR"/prompt.zsh

elif test -n "$BASH_VERSION"; then

  export SHELL_PROFILE="bash"

  # shellcheck source=/dev/null
  . "$SHELL_CONFIG_DIR"/prompt.sh

else
  export SHELL_PROFILE="sh"
fi

# --- Load modules ---------------------------------------------------------------------------
# shellcheck source=/dev/null
for f in "$SHELL_CONFIG_DIR"/utils/*; do . "$f"; done
# shellcheck source=/dev/null
for f in "$SHELL_CONFIG_DIR"/aliases/*; do . "$f"; done
# shellcheck source=/dev/null
for f in "$SHELL_CONFIG_DIR"/env/*; do . "$f"; done


# --- ENV ------------------------------------------------------------------------------------

RUST_CARGO_BINDIR=$HOME/.cargo/bin

# Env vars
export FZF_DEFAULT_COMMAND='rg --files'
export EDITOR=vim

# Append to path
export PATH=$PATH:$RUST_CARGO_BINDIR
