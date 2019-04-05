docker login –username $DOCKER_USER –password $DOCKER_PASS

if [ “$TRAVIS_BRANCH” = “master” ]; then

  TAG=”latest”

else

  TAG=”$TRAVIS_BRANCH”

fi

echo $DOCKER_REPO
echo $TRAVIS_REPO_SLUG
echo $TRAVIS_BRANCH


docker build -f Dockerfile -t $DOCKER_REPO:$TAG .

#docker tag $DOCKER_REPO:latest $DOCKER_REPO:$TAG

docker push $DOCKER_REPO:$TAG

