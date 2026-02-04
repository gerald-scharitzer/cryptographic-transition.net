# Test the OpenSSL image
. sh/conf.sh
podman run --replace -a stdout --name openssl openssl:$VERSION openssl version
podman run --replace -a stdout --name openssl openssl:$VERSION openssl list -kem-algorithms
podman run --replace -a stdout --name openssl openssl:$VERSION openssl list -signature-algorithms
podman run --replace -a stdout --name openssl openssl:$VERSION openssl list -public-key-algorithms
podman run --replace -a stdout --name openssl openssl:$VERSION openssl ciphers
podman run --replace -a stdout --name openssl openssl:$VERSION openssl info -configdir
server_id=$(podman run --replace --detach --name openssl-s_server --publish '127.0.0.1:8443:8443' openssl:$VERSION openssl s_server -4 -state -accept '127.0.0.1:8443' -cert /etc/ssl/server.pem -key /etc/ssl/key.pem)
echo server_id:$server_id
sleep 1 # FIXME use health or readiness probe instead
podman run --replace -a stdout,stderr --name openssl --net "container:$server_id" openssl:$VERSION openssl s_client -4 '127.0.0.1:8443'
