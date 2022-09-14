start:
	bundle install
	bundle update
	bundle exec rake db:migrate

migrate-heroku:
	heroku run rake db:migrate --app to-do-insales

migrate-local:
	bundle exec rake db:migrate

lint:
	bundle exec rubocop

fix-lint:
	bundle exec rubocop -A

test:
	bundle exec rake test

.PHONY: test
