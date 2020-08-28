# Wilayah Indonesia

## Commands

### reset, migrate

heroku restart --app=wilayah-indonesia && heroku pg:reset DATABASE --confirm wilayah-indonesia --app=wilayah-indonesia && heroku run rake db:migrate --app=wilayah-indonesia 

### reset, migrate, seed

heroku restart --app=wilayah-indonesia && heroku pg:reset DATABASE --confirm wilayah-indonesia --app=wilayah-indonesia && heroku run rake db:migrate db:seed --app=wilayah-indonesia 

### migrate, seed

heroku run rake db:migrate db:seed --app=wilayah-indonesia 

## heroku console

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
