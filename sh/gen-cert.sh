# Generate keypair and self-signed root certificate
. sh/conf.sh &&
mkdir -p src/front/conf &&
# FIXME generate passphrase and store it securely, instead of -noenc
# FIXME set certificate attributes with configuration file
openssl req -x509 -batch -noenc \
	-newkey rsa:2048 \
	-subj '/CN=localhost' \
	-addext 'subjectAltName=DNS:localhost' \
	-keyout src/front/conf/key.pem \
	-out src/front/conf/cert.pem
