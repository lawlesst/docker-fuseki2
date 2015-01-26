# docker-fuseki2 — Docker image for Jena Fuseki2
This docker image provides a simple, in-memory, update-enabled SPARQL 1.1-compliant triplestore. The triplestore is Jena Fuseki 2.x.

The image will gradually be developed to support other configurations.

If you're interested in helping or are looking for specific features, submit an issue/pull request.

The home for the project (and a development environment) can be found in [this github repo](https://github.com/brinxmat/docker-fuseki2/).

##Development quickstart

1. Install vagrant
2. Clone repo
3. From the cloned folder, enter the following commands on the command line:
```
term$ make up_fuseki
term$ make build
term$ make run_fuseki
```

##Install Vagrant

Install the correct version of vagrant via your package manager (hint: brew on a Mac), or by visiting https://www.vagrantup.com/downloads. You might want to install vagrant cachier at the same time (https://github.com/fgrehm/vagrant-cachier) as this removes some of the waiting pain.

##Install make
For Windows users, you need the make command-line tool. You can probably get away with Gow (https://github.com/bmatzelle/gow). If you're on a Mac, you might need to install the OS X command line tools. Linux will likely be good to go.

##Clone repo

Clone https://github.com/brinxmat/fuseki-docker.git

##Make the project

Make the vagrant enviroment
```
term$ make up_fuseki
```
Build the fuseki docker image
```
term$ make build
```
Run fuseki and open a web browser
```
term$ make run_fuseki
```
###Running the UI
If you already have a running docker, but no UI, you can run
```
term$ make ui
```
