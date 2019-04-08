docker login –u=mrinalbhattacharya –p=Docker@1987 docker.io
docker build -f Dockerfile -t restful-api-springboot-docker .
docker tag restful-api-springboot-docker mrinalbhattacharya/restful-api-springboot-docker
echo "build and tag is done"
docker images
docker container ls
#docker tag $DOCKER_REPO:latest $DOCKER_REPO:$TAG

docker push mrinalbhattacharya/restful-api-springboot-docker
