# Laravel, Valet and PHP

alias php="herd php"
alias composer="herd composer"
alias which-php="herd which-php"
alias pint="./vendor/bin/pint"
alias pest="./vendor/bin/pest"
alias rector="./vendor/bin/rector"
alias art='php artisan'
alias am='php artisan migrate'
alias amr='php artisan migrate:rollback'
alias amf='php artisan migrate:fresh'
alias adbs='php artisan db:seed'
alias amfdbs='php artisan migrate:fresh && php artisan migrate && php artisan db:seed'
alias artclear='art clear && art config:clear && art cache:clear && art view:clear && art route:clear && composer dump-autoload'
