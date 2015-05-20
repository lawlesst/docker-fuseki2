#!/bin/sh
set -e

cd /opt/fuseki2/apache-jena-fuseki-2.0.0/
JVM_ARGS="-Xms2048M" ./fuseki-server --config=./fuseki-fulltext-config.ttl
