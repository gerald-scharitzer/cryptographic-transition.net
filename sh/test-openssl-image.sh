# Test the OpenSSL image
. sh/conf.sh &&
podman run --replace -a stdout --name openssl openssl:$VERSION openssl version &&
podman run --replace -a stdout --name openssl openssl:$VERSION openssl list -kem-algorithms &&
podman run --replace -a stdout --name openssl openssl:$VERSION openssl list -signature-algorithms &&
podman run --replace -a stdout --name openssl openssl:$VERSION openssl list -public-key-algorithms &&
podman run --replace -a stdout --name openssl openssl:$VERSION openssl ciphers
