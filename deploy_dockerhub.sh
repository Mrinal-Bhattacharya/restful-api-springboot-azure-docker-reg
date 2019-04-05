docker login –username $DOCKER_USER –password $DOCKER_PASS

if [ “$TRAVIS_BRANCH” = “master” ]; then

  TAG=”latest”

else

  TAG=”$TRAVIS_BRANCH”

fi

docker build -f Dockerfile -t $DOCKER_REPO:$COMMIT .

docker tag $DOCKER_REPO:$COMMIT $DOCKER_REPO:$TAG

docker push $DOCKER_REPO