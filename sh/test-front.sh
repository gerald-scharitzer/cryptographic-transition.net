# Run the frontend
. sh/conf.sh &&
openssl s_client 127.0.0.1:8443 <<-EOF
GET / HTTP/1.1
Host: localhost
Connection: close
EOF
