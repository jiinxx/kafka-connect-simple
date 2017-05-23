FROM anapsix/alpine-java
 
ENV CONNECT_HOME /opt/connect

WORKDIR ${CONNECT_HOME}

COPY target/*-jar-with-dependencies.jar ${CONNECT_HOME}/dep/
COPY connect-elasticsearch-sink.properties ${CONNECT_HOME}/
COPY connect-file-source.properties ${CONNECT_HOME}/
COPY connect-standalone.properties ${CONNECT_HOME}/

COPY openrecipes.json ${CONNECT_HOME}/

COPY run_standalone.sh ${CONNECT_HOME}/
CMD chmod +x /opt/connect/run_standalone.sh

ENV PATH ${PATH}:${CONNECT_HOME}/

ENTRYPOINT ["run_standalone.sh"]
