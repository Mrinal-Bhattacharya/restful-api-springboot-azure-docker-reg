wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

heroku plugins:install @heroku-cli/plugin-container-registry

docker login --username=_ --password=$(heroku auth:token) registry.heroku.com

heroku container:push web --app restful-api-springboot-docker

heroku container:release web --app restful-api-springboot-docker
