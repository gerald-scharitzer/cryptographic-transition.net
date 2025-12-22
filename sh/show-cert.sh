# Show the certificate in human-readable form
# FIXME generate passphrase and store it securely, instead of -noenc
# FIXME set certificate attributes with configuration file
openssl x509 -text -in src/front/conf/cert.pem
