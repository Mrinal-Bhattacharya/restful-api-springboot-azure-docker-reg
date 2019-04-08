docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker build -t mrinalbhattacharya/restful-api-springboot-docker:latest .
echo "build and tag is done"
docker images
docker container ls
docker push mrinalbhattacharya/restful-api-springboot-docker:latest
