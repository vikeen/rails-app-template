#phony dependency task that does nothing
phony:

## start the application
start: phony
	docker-compose up

## stop the application
stop: phony
	docker-compose down

## build the docker contaienrs
build: phony
	docker-compose build

## run application test suite
test: phony
	docker-compose run web rake test

## setup the database
db-setup: phony
	docker-compose run web rake db:setup

## run any database migrations
db-migrate: phony
	docker-compose run web rake db:migrate

## update ruby bundle within docker
bundle: phony
	docker-compose run web bundle

## list all application routes
routes: phony
	docker-compose run web rails routes
