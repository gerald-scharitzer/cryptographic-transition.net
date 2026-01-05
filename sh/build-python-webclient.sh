# Build the Python web client image
. sh/conf.sh &&
podman build -t python-web-client:$VERSION src/client/python
