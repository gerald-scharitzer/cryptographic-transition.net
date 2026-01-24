# Build the openssl image
. sh/conf.sh &&
podman build -t openssl:$VERSION src/openssl
