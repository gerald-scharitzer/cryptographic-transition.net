# Remove the Python web client image and its containers
. sh/conf.sh &&
podman rmi --force python-web-client:$VERSION
