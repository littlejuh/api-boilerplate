#  Sinatra API boilerplate

## Getting Started
### Dependencies
If you don't want install all dependencies, you just need [Docker](https://www.docker.com/ "docker") running in your machine

Also you can run using these installed dependencies:
- [Ruby >= 3.0.0](https://ruby-doc.org/ "ruby")
  - gems: [sinatra](https://rubygems.org/gems/sinatra "sinatra"), [require_all](https://rubygems.org/gems/require_all "require_all"), [sinatra-cross_origin](https://rubygems.org/gems/sinatra-cross_origin/versions/0.4.0 "sinatra-cross_origin"), [thin](https://rubygems.org/gems/thin "thin"), [rack-test](https://rubygems.org/gems/rack-test  "rack-test"), [rspec](https://rspec.info/ "rspec"), [rubocop](https://github.com/rubocop/rubocop, "rubocop")
- [Bundler package manager](https://bundler.io/ "bundler")

---

### Run using Docker
- Build(install dependencies):
  - `make docker-build`
- Run api-boilerplate application(in :9292 port):
  - `make docker-run`
- Run tests:
  - `make docker-test`
- Run static analysis(rubocop w/ automatic fix):
  - `make docker-lint`  

### Run
- Build(install dependencies):
  - `make build`
- Run api-boilerplate application(in :9292 port):
  - `make run`
- Run tests
  - `make test`
- Run static analysis(rubocop w/ automatic fix):
  - `make lint`
