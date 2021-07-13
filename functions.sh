
# create a directory and then navigate into it
mkcd () {
  mkdir -p -- "$1" && cd -P -- "$1"
}

### MySQL Functions to connect easily

USER='root'
PASS=''

function db {
  if [ "$1" = "connect" ]; then
    mysql -uroot
  elif [ "$1" = "refresh" ]; then
    mysql -uroot -e "drop database $2; create database $2"
  elif [ "$1" = "create" ]; then
    mysql -uroot -e "create database $2"
  elif [ "$1" = "drop" ]; then
    mysql -uroot -e "drop database $2"
  fi
}