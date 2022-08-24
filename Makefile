migrate-heroku:
	heroku run rake db:migrate --app to-do-insales

lint:
	bundle exec rubocop
