#!/bin/bash
mkdir -p /opt/downloads
docker run -d --name=xunlei --hostname=myxunlei --net=bridge -p 2345:2345 -v /root/xunlei:/xunlei/data -v /opt/downloads:/xunlei/downloads --restart=unless-stopped --privileged cnk3x/xunlei:latest
