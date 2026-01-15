# Remove the Python web client image and its containers
. sh/conf.sh &&
podman rmi --force python-web-client:$VERSION # TODO upgrade podman to use --ignore
if (( $? == 1 )); then # image not found
	true
fi
