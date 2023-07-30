# builds co-author git commit with fuzzy search for author
co_author() {
  commit_msg=$1
  author_info=$(git log --format="%aN <%aE>" | sort -u | fzf)

  git commit -m $commit_msg -m "Co-authored-by: $author_info"
}
