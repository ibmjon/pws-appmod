FROM websphere-liberty:19.0.0.9-javaee7


COPY --chown=1001:0  tmp/PlantsByWebSphere.war /config/dropins/
COPY --chown=1001:0  tmp/server.xml /config/
COPY --chown=1001:0  tmp/lib/derby.jar /opt/ibm/wlp/usr/shared/resources/derby/

RUN configure.sh
