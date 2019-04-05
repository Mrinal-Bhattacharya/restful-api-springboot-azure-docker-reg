wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

heroku plugins:install @heroku-cli/plugin-container-registry

docker login –username _ –password=$HEROKU_API_KEY registry.heroku.com

heroku container:push web –app restful-api-springboot-docker

heroku container:release web –app restful-api-springboot-docker