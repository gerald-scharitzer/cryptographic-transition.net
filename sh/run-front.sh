# Run the frontend
. sh/conf.sh &&
podman run -d --name frontend -p 8443:8443 frontend:$VERSION
