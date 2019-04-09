docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker build -t mrinalbhattacharya/"$DOCKER_REPO":"$TRAVIS_BUILD_NUMBER" .
docker push mrinalbhattacharya/"$DOCKER_REPO":"$TRAVIS_BUILD_NUMBER"
