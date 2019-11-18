#!/bin/bash
docker stop lab8harpreet
CID=$(docker ps -lq)
[ -n "$CID" ] && docker rm $CID
exit 0
