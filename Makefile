start:
	bundle install
	bundle update
	bin/rake db:migrate

migrate-heroku:
	heroku run rake db:migrate --app to-do-insales

lint:
	bundle exec rubocop

fix-lint:
	bundle exec rubocop -A

tests:
	NODE_ENV=test bin/rails test
