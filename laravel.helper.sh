#Laravel helper
alias artisan='php artisan'
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

# New laravel installation
alias larapro='composer create-project laravel/laravel'
alias laranew='laravel new'

# create laravel project and then navigate into it
laraprocd () {
  composer create-project laravel/laravel -- "$1" && cd -- "$1"
}

# create laravel project, navigate into it and init git repo
initlarapro () {
  composer create-project laravel/laravel -- "$1" && cd -- "$1" && git init
}

# create a laravel and then navigate into it
laranewcd () {
  laravel new -- "$1" && cd -- "$1"
}

# create a laravel then navigate into it and init git repo
initlaranew () {
  laravel new -- "$1" && cd -- "$1" && git init
}