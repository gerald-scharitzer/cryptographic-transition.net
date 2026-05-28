# Build the tomcat image
. sh/conf.sh &&
podman build -t tomcat:$VERSION src/server/tomcat
