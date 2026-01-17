# Test the Python with OpenSSL image
. sh/conf.sh &&
podman run --replace -a stdout --name python-openssl python-openssl:$VERSION python -V &&
podman run --replace -a stdout --name python-openssl python-openssl:$VERSION openssl version &&
podman run --replace -a stdout --name python-openssl python-openssl:$VERSION openssl list -kem-algorithms &&
podman run --replace -a stdout --name python-openssl python-openssl:$VERSION openssl list -signature-algorithms &&
podman run --replace -a stdout --name python-openssl python-openssl:$VERSION openssl list -public-key-algorithms
