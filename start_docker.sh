#!/bin/bash
docker run -d -p 9200:9200 -p 5601:5601 --name centos centos:ver1 sleep 60000000
docker run -d --name ubuntu ubuntu:ver1 sleep 60000000