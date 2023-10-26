# builds co-author git commit with fuzzy search for author
co_author() {
  commit_msg=$1
  author_info=$(git log --format="%aN <%aE>" | sort -u | fzf)

  git commit -m $commit_msg -m "Co-authored-by: $author_info"
}

tclone() {
  repo_ssh_url=$1
  workspace=$2

  declare -A workspace_paths=(
    [work]=~/Dev/work/
    [top]=~/Dev/top_contrib/
    [agency]=~/Dev/agency-of-learning/
    [scratch]=~/Dev/test-space/
  )

  project_name=$(echo "$repo_ssh_url" | awk -F'[/.]' '{print $3}')
  destination_path="${workspace_paths[$workspace]}${project_name}"
  git clone $repo_ssh_url $destination_path

  source ~/.local/bin/tmux-sessionizer $destination_path
}

# kills process for given port number
kill_port() {
  port_num=$1
  lsof -ti :$port_num | xargs kill -9
}

g_remote_url() {
  remote=$1
  if [ "$remote" = "og" ]; then
    ssh_remote=$(git remote -v | head -n 1 | awk -F " " '{print $2}')
  elif [ "$remote" = "up" ]; then
    ssh_remote=$(git remote -v | grep upstream | grep -v -e fetch | awk -F " " '{print $2}')
  else
    echo "Must pass in a remote name" >&2
    return 1
  fi

  url_without_ext="${ssh_remote%.git}"
  repo_path="${url_without_ext#*:}"

  echo "https://github.com/$repo_path"
}

web_repo() {
  remote_url=$(g_remote_url $1)

  if [ -z "$remote_url" ]; then
    return 1
  fi

  google-chrome $remote_url
}

open_pr() {
  compare_branch=$(git branch --show-current)

  if [ $# -eq 0 ]; then
    base_branch="main"
  else
    base_branch=$1
  fi

  pull_url="$(g_remote_url)/compare/$base_branch...$compare_branch"
  google-chrome $pull_url
}
