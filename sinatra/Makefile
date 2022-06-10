build:
	bundle
run:
	rackup -s thin
lint:
	bundle exec rubocop -A
test:
	bundle exec rspec
docker-build:
	docker build . -t api-boilerplate:latest
docker-run:
	docker run -p 9292:9292 -it api-boilerplate:latest bundle exec thin start -R config.ru -a 0.0.0.0 -p 9292
docker-test:
	docker run -it api-boilerplate:latest bundle exec rspec
docker-lint:
	docker run -it api-boilerplate:latest bundle exec rubocop -A