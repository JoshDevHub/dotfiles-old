# PATH settings

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export RUBYOPT='-W0'

# asdf
. $HOME/.asdf/asdf.sh

# pnpm
export PNPM_HOME="/home/josh/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$HOME/.local/bin:$PATH"
