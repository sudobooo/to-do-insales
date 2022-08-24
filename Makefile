start:
	bundle install
	bundle update
	bundle exec rake db:migrate

migrate-heroku:
	heroku run rake db:migrate --app to-do-insales

lint:
	bundle exec rubocop

fix-lint:
	bundle exec rubocop -A

test:
	NODE_ENV=test bin/rails test
