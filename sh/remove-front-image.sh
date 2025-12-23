# Remove the frontend image and its containers
. sh/conf.sh &&
podman rmi --force frontend:$VERSION
