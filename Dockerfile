FROM java:openjdk-8-jre
# fix startup
ENV FUSEKI_VERSION apache-jena-fuseki-2.4.0
ENV FUSEKI /opt/fuseki2
ENV FUSEKI_ROOT ${FUSEKI}/${FUSEKI_VERSION}

RUN echo "Installing Fuseki 2 -- ${FUSEKI_VERSION}"

RUN mkdir /working && cd /working
RUN curl -sS http://apache.mirrors.lucidnetworks.net/jena/binaries/${FUSEKI_VERSION}.zip > temp.zip
RUN unzip temp.zip -d ${FUSEKI}

RUN chmod +x ${FUSEKI_ROOT}/fuseki-server

RUN rm -R /working

ADD startup.sh ${FUSEKI_ROOT}/startup.sh
RUN chmod +x ${FUSEKI_ROOT}/startup.sh

ADD fuseki-fulltext-config.ttl ${FUSEKI_ROOT}/fuseki-fulltext-config.ttl
ADD shiro.ini ${FUSEKI_ROOT}/run/shiro.ini

RUN mkdir /data
VOLUME /data
EXPOSE 3030
#This doesn't seem to be able to read ENV vars
#CMD ["${FUSEKI_ROOT}/startup.sh"]
CMD ["/opt/fuseki2/apache-jena-fuseki-2.4.0/startup.sh"]
