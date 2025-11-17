# Build

from the project root directory with the following requirements.

- [Jekyll](https://jekyllrb.com/) builds the website
- [Podman](https://podman.io/) builds images and runs containers
- [Docker Hub](https://hub.docker.com/) provides the [Nginx](https://hub.docker.com/_/nginx) images
- [OpenSSL](https://openssl-library.org/) generates keypairs and certificates

## Website

Build the website with [`. sh/build-site.sh`](https://jekyllrb.com/docs/usage/).

Serve the website with `. sh/serve-site.sh`.

Clean the website with `. sh/clean-site.sh`.

## Frontend

**FIXME** Contain build variables.

Generate keypair and self-signed root certificate with `. sh/gen-cert.sh`.

Build the frontend image with `. sh/build-front.sh`.

Run the frontend image with `. sh/run-front.sh`.

Test the frontend at http://localhost:8443.

Stop and remove the frontend with `. sh/stop-front.sh`.

Remove the frontend image with `. sh/remove-front.sh`.
