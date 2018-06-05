#!/bin/sh
set -e

cd /opt/fuseki2/apache-jena-fuseki-3.7.0/
JVM_ARGS="-Xms2048M" ./fuseki-server --config=./fuseki-fulltext-config.ttl
