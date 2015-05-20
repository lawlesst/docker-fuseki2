# docker-fuseki2 — Docker image for Jena Fuseki2

This is forked from Rurik Greenall's [docker-fuseki2](https://github.com/brinxmat/docker-fuseki2/) project.  Thanks to Rurik for making his work available.

This is intended to be used for development, testing, and learning only.  The Fuseki security has been configured to allow all connections.

Changes/differences from Rurik's code and things I am doing with this:

 - use a released version of Fueski rather than build from source
 - use a minimal [java base image](https://registry.hub.docker.com/u/library/java/)
 - use with [docker-compose](https://docs.docker.com/compose/) to link to web applications that pull data from Fuseki
 - support mulitple configurations easily - just include a new config file, copy it to the container in the Dockerfile and reference it in startup.sh


