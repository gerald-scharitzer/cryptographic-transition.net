# Remove the openssl image and its containers
. sh/conf.sh &&
podman rmi --force openssl:$VERSION
