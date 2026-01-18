# Remove the Python with OpenSSL container
. sh/conf.sh &&
podman rm --force --ignore python-openssl
