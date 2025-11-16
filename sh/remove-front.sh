# Remove the frontend image
. sh/conf.sh &&
podman rmi frontend:$VERSION
