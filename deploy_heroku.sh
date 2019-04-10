wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

heroku plugins:install @heroku-cli/plugin-container-registry

docker login --username=_ --password=a19cf6da3e09d2096f790b3d3f1172deeea7e9d7 registry.heroku.com

heroku container:push web –app restful-api-springboot-docker

heroku container:release web –app restful-api-springboot-docker
