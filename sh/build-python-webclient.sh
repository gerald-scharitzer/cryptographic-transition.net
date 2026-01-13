# Build the Python web client image
. sh/conf.sh &&
. sh/remove-python-web-client-image.sh &&
podman build -t python-web-client:$VERSION src/client/python
