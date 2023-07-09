# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh config
export ZSH="/home/josh/.oh-my-zsh"
ZSH_THEME="eastwood"
plugins=(bundler git rails vi-mode zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
bindkey -M viins 'jk' vi-cmd-mode

for conf in "$HOME/.config/zsh/"*.zsh; do
  source "${conf}"
done
unset conf

if [ -z "$TMUX" ]; then
  tmux new-session -As "josh"
fi

co_author() {
  commit_msg=$1
  author_info=$(git log --format="%aN <%aE>" | sort -u | fzf)

  git commit -m $commit_msg -m "Co-authored-by: $author_info"
}

action_route() {
  echo "$(rails routes -E | grep -B 2 $1)"
}
