# Run the frontend
. sh/conf.sh &&
podman run -d --name frontend -p 127.0.0.1:8443:8443 frontend:$VERSION
