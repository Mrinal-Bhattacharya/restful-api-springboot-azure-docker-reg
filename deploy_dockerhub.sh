docker login –username $DOCKER_USER –password $DOCKER_PASS

if [ “$TRAVIS_BRANCH” = “master” ]; then

  TAG=”latest”

else

  TAG=”$TRAVIS_BRANCH”

fi

docker build -f Dockerfile -t mrinalbhattacharya/restful-api-springboot-docker:$TAG

#docker tag $DOCKER_REPO:latest $DOCKER_REPO:$TA$DOCKER_REPO:latest $DOCKER_REPO:$TAG

docker push mrinalbhattacharya/restful-api-springboot-docker:$TAG
