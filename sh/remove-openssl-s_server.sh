# Remove the OpenSSL client and server, because the client depends on the server
. sh/conf.sh &&
podman rm --force openssl
podman rm --force openssl-s_server
