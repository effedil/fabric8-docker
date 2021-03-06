#!/bin/sh

ADMIN_USERNAME=${ADMIN_USERNAME:-admin}
ADMIN_PASSWORD=${ADMIN_PASSWORD:-admin}

echo Welcome to fabric8: http://fabric8.io/
echo
echo Starting Fabric8 container ID: $FABRIC8_RUNTIME_ID
echo Using admin user:              ${ADMIN_USERNAME}
echo Docker REST API:               ${DOCKER_HOST}
echo Connecting to ZooKeeper:       $FABRIC8_ZOOKEEPER_URL 
echo Environment:                   $FABRIC8_FABRIC_ENVIRONMENT
echo Using bindaddress:             $FABRIC8_BINDADDRESS

#echo "\nadmin=${ADMIN_USERNAME},${ADMIN_PASSWORD}" >> /opt/fabric8/etc/users.properties

# Use exec to replace shell with process to ensure signals get handled correctly
exec /opt/fabric8/bin/fabric8 server
