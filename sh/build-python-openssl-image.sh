# Build the Python with OpenSSL image
. sh/conf.sh &&
. sh/remove-python-openssl-image.sh &&
podman build -t python-openssl:$VERSION src/parent/python-openssl
