#!/bin/sh

curl -siu admin:admin123 http://localhost:8081/service/metrics/ping | grep pong
RESPONSE=$?

if [ "$RESPONSE" = "0" ] ; then
  echo "******** readiness is Ready ********"
  exit 0;
else
  echo "******** readiness is Not Ready ********"
  exit 1;
fi