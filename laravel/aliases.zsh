# Laravel, Valet and PHP

alias php="valet php"
alias composer="valet composer"
alias which-php="valet which-php"
alias sail="[ -f sail ] && sh sail || sh vendor/bin/sail"
alias pint="./vendor/bin/pint -v"
alias rector="./vendor/bin/rector"
alias art='php artisan'
alias am='php artisan migrate'
alias amr='php artisan migrate:rollback'
alias amf='php artisan migrate:fresh'
alias adbs='php artisan db:seed'
alias amfdbs='php artisan migrate:rollback && php artisan migrate && php artisan db:seed'
alias artclear='art clear && art config:clear && art cache:clear && art view:clear && art route:clear && composer dump-autoload'
