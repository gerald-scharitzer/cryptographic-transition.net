# Test the web client image
. sh/conf.sh &&
podman run --replace -a stdout --name python-web-client python-web-client:$VERSION openssl version &&
podman run --replace -a stdout --name python-web-client python-web-client:$VERSION
