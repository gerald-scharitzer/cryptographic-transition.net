# Start the OpenSSL server
. sh/conf.sh
rm temp/openssl-s_server.cid
podman run --replace --detach --name openssl-s_server --cidfile temp/openssl-s_server.cid --publish '127.0.0.1:8443:8443' openssl:$VERSION openssl s_server -4 -state -accept '127.0.0.1:8443' -cert /etc/ssl/server.pem -key /etc/ssl/key.pem
sleep 1 # FIXME use health or readiness probe instead
server_id=$(cat temp/openssl-s_server.cid) # FIXME verify variable content
echo server_id: $server_id
