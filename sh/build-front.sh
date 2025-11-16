# Build the frontend
. sh/conf.sh &&
podman build -t frontend:$VERSION src/front
