# Run the frontend
. sh/conf.sh &&
podman run -d --name python-web-client python-web-client:$VERSION
