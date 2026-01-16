# Test the Python with OpenSSL image
. sh/conf.sh &&
podman run --replace -a stdout --name python-openssl python-openssl:$VERSION python -V &&
podman run --replace -a stdout --name python-openssl python-openssl:$VERSION openssl version
