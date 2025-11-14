# Build

the website with the command [`jekyll build`](https://jekyllrb.com/docs/usage/) in the directory [`src/jekyll`](src/jekyll) into the directory `src/jekyll/_site`.

Test with `jekyll serve`.

Clean the output locations with `jekyll clean`.

## Frontend

Build the frontend image with `podman build -t frontend:0.0.0-snapshot src/front`.

Run the frontend image with `podman run -d --rm --name frontend -p 8080:80 frontend:0.0.0-snapshot`.

Test the frontend at http://localhost:8080.

Stop and remove the frontend with `podman stop frontend`.
