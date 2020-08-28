# Wilayah Indonesia

## Commands

### heroku clean

heroku restart && heroku pg:reset DATABASE --confirm wilayah-indonesia && heroku run rake db:migrate

### seed on heroku

heroku restart --app=wilayah-indonesia && heroku pg:reset DATABASE --confirm wilayah-indonesia --app=wilayah-indonesia && heroku run rake db:migrate db:seed --app=wilayah-indonesia 

### migrate and seed on heroku

heroku run rake db:migrate db:seed --app=wilayah-indonesia 

heroku run console --app=wilayah-indonesia 
heroku run bash --app=wilayah-indonesia 

### rebuild database locally

rake db:drop db:create db:migrate
rake db:drop db:create db:migrate db:seed
rake db:seed

### logs

heroku logs --tail --app wilayah-indonesia

### secret key

EDITOR=vim rails credentials:edit
rails:credentials:show
