. "$HOME/.cargo/env"

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

# add binary directories to path
export PATH="$HOME/.bin:$HOME/.local/bin:$HOME/go/bin:$PATH"

# set some env variables
export EDITOR=nvim
export MANPAGER='nvim +Man!'
# -R: retain colors
# -F: quit if the content fits on one screen
# -X: do not clear the screen after exit
export LESS="-R -F -X"
