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
  )

  project_name=$(echo "$repo_ssh_url" | awk -F'[/.]' '{print $3}')
  destination_path="${workspace_paths[$workspace]}${project_name}"
  git clone $repo_ssh_url $destination_path

  source ~/.local/bin/tmux-sessionizer $destination_path
}
