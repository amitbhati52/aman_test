# Tag Github repo with version prefix from version.txt and semver 
latest_tag=$(git ls-remote --tags origin | cut -f 3 -d '/' | sort -t. -k 3,3nr | head -1)
VERSION_TAG="${latest_tag%.*}.$((${latest_tag##*.}+1))"
echo "Incremented version will be: ${VERSION_TAG}"
echo "Current version is: ${latest_tag}"
git tag ${VERSION_TAG}
git push --tags
