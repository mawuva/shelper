#Laravel helper
alias artisan='php artisan'
alias art='php artisan'
alias art-m='php artisan make:'
alias bob='php artisan bob::build'

# Development
alias pas='php artisan serve'

# Database
alias pam='php artisan migrate'
alias pamf='php artisan migrate:fresh'
alias pamfs='php artisan migrate:fresh --seed'
alias pamr='php artisan migrate:rollback'
alias pads='php artisan db:seed'

# Makers
alias pamm='php artisan make:model'
alias pamc='php artisan make:controller'
alias pams='php artisan make:seeder'
alias pamt='php artisan make:test'
alias pamfa='php artisan make:factory'
alias pamp='php artisan make:policy'
alias pame='php artisan make:event'
alias pamj='php artisan make:job'
alias paml='php artisan make:listener'
alias pamn='php artisan make:notification'
alias pampp='php artisan make:provider'
alias pamcp='php artisan make:component'
alias pamrq='php artisan make:request'
alias pamrs='php artisan make:resource'


# Clears
alias pacac='php artisan cache:clear'
alias pacoc='php artisan config:clear'
alias pavic='php artisan view:clear'
alias paroc='php artisan route:clear'

# queues
alias paqf='php artisan queue:failed'
alias paqft='php artisan queue:failed-table'
alias paql='php artisan queue:listen'
alias paqr='php artisan queue:retry'
alias paqt='php artisan queue:table'
alias paqw='php artisan queue:work'

# Create laravel project from composer and navigate into it and init git repo if asked
function larapro {
  if [ "$1" = "init" ]; then
    composer create-project laravel/laravel -- "$2" && cd -- "$2" && git init
  elif [ "$1" = "cd" ]; then
    composer create-project laravel/laravel -- "$2" && cd -- "$2"
  elif [ "$1" = "no-cd" ]; then
    composer create-project laravel/laravel -- "$2" 
  else
    composer create-project laravel/laravel -- "$1" && cd -- "$1"
  fi
}

# Create laravel project from local repo and navigate into it and init git repo if asked
function laranew {
  if [ "$1" = "init" ]; then
    laravel new -- "$2" && cd -- "$2" && git init
  elif [ "$1" = "cd" ]; then
    laravel new -- "$2" && cd -- "$2"
  elif [ "$1" = "no-cd" ]; then
    laravel new -- "$2" 
  else
    laravel new -- "$1" && cd -- "$1"
  fi
}
