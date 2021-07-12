
# create a directory and then navigate into it
mkcd () {
  mkdir -p -- "$1" && cd -P -- "$1"
}