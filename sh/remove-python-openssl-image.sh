# Remove the Python with OpenSSL image and its containers
. sh/conf.sh &&
podman rmi --force python-openssl:$VERSION # TODO upgrade podman to use --ignore
if (( $? == 1 )); then # image not found
	true
fi
