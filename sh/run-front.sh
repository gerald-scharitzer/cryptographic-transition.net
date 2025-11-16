# Run the frontend
. sh/conf.sh &&
podman run -d --rm --name frontend -p 8080:80 frontend:$VERSION
