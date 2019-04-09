docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
echo "$TRAVIS_BRANCH"
echo "$TRAVIS_TAG"
echo "$TRAVIS_BUILD_NUMBER"
echo "$TRAVIS_BUILD_ID"
echo "$TRAVIS_COMMIT"
echo "$TRAVIS_REPO_SLUG"
docker build -t "$DOCKER_REPO":latest .
docker push "$$DOCKER_REPO":latest
