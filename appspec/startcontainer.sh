#!/bin/bash
$(aws ecr get-login --region us-west-2)
docker pull 247528934365.dkr.ecr.us-west-2.amazonaws.com/harpreetbrar1/lab8harpreet:latest || {
    echo "ERROR: docker pull failed. Sleeping for 10 minutes to allow investigation..."
    sleep 600
    exit 1
}
docker run --name lab8harpreet -p 80:8080 --detach 247528934365.dkr.ecr.us-west-2.amazonaws.com/harpreetbrar1/lab8harpreet:latest
