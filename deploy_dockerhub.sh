docker login –u=mrinalbhattacharya –p=Docker@1987 docker.io
docker build -f Dockerfile -t mrinalbhattacharya/restful-api-springboot-docker:latest .
echo "build and tag is done"
docker images
docker container ls
#docker tag $DOCKER_REPO:latest $DOCKER_REPO:$TAG

docker push mrinalbhattacharya/restful-api-springboot-docker:latest
