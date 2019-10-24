start: ## start the application
	docker-compose up

stop: ## stop the application
	docker-compose down

test: ## run application test stack
	docker-compose run web rake test

db-setup: ## setup the database
	docker-compose run web rake db:setup

db-migrate: ## run any database migrations
	docker-compose run web rake db:migrate

bundle: ## update ruby bundle within docker
	docker-compose run web bundle

routes: ## list all application routes
	docker-compose run web rails routes
