FROM java:openjdk-8-jre

env FUSEKI_VERSION apache-jena-fuseki-2.0.0
env FUSEKI /opt/fuseki2
env FUSEKI_ROOT $FUSEKI/$FUSEKI_VERSION

RUN echo "Installing Fuseki 2 -- $FUSEKI_VERSION"

RUN mkdir /working && cd /working
RUN curl -sS http://apache.mirrors.lucidnetworks.net/jena/binaries/$FUSEKI_VERSION.zip > temp.zip
RUN unzip temp.zip -d $FUSEKI
#RUN mkdir /opt/fuseki2
#RUN mv /working/$FUSEKI_VERSION/ $FUSEKI/

RUN chmod +x $FUSEKI_ROOT/fuseki-server

RUN rm -R /working

ADD startup.sh $FUSEKI_ROOT/startup.sh
RUN chmod +x $FUSEKI_ROOT/startup.sh

ADD fuseki-fulltext-config.ttl $FUSEKI_ROOT/fuseki-fulltext-config.ttl
ADD shiro.ini $FUSEKI_ROOT/run/shiro.ini

RUN mkdir /data
VOLUME /data
EXPOSE 3030
#This doesn't seem to be able to read env vars
CMD ["/opt/fuseki2/apache-jena-fuseki-2.0.0/startup.sh"]
#CMD ["$FUSEKI_ROOT/startup.sh"]