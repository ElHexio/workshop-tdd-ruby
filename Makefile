install:
	bundle install

lint:
	 bundle exec rake rubocop

lint-fix:
	bundle exec rake rubocop[--auto-correct]

test:
	bundle exec rake spec
