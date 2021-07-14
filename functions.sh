
# create a directory and then navigate into it
mkcd () {
  mkdir -p -- "$1" && cd -P -- "$1"
}

### MySQL Functions to connect easily

USER='root'
PASS=''

function db {
  if [ "$1" = "connect" ]; then
    mysql -u$USER
  elif [ "$1" = "refresh" ]; then
    mysql -u$USER -e "drop database $2; create database $2"
  elif [ "$1" = "create" ]; then
    mysql -u$USER -e "create database $2"
  elif [ "$1" = "drop" ]; then
    mysql -u$USER -e "drop database $2"
  elif [ "$1" = "databases" ]; then
    mysql -u$USER -e "show databases"
  elif [ "$1" = "structure" ] || [ "$1" = "struct" ] ; then
    mysql -u$USER -e "use $2; show tables;"
  fi
}

## Switch between php versions
function php-version {
  if [ -n "$1" ]; then
    sudo update-alternatives --set php /usr/bin/php"$1"
  else
    echo "First parameter that should be the version is not supplied."
  fi
}