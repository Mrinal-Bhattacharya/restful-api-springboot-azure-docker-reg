docker login –username mrinalbhattacharya –password Docker@1987
docker build -f Dockerfile -t mrinalbhattacharya/restful-api-springboot-docker:latest .

#docker tag $DOCKER_REPO:latest $DOCKER_REPO:$TAG

docker push mrinalbhattacharya/restful-api-springboot-docker:latest