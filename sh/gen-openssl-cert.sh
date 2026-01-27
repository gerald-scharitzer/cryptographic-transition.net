# Generate keypair and self-signed root certificate for openssl s_server
. sh/conf.sh &&
mkdir -p src/openssl/ssl &&
# FIXME generate passphrase and store it securely, instead of -noenc
# FIXME set certificate attributes with configuration file
openssl req -x509 -batch -noenc \
	-newkey rsa:2048 \
	-subj '/CN=localhost' \
	-addext 'subjectAltName=DNS:localhost' \
	-keyout src/openssl/ssl/key.pem \
	-out src/openssl/ssl/server.pem
