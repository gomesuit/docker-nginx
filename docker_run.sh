#!/bin/sh

docker stop nginx
docker rm nginx
docker run -d \
	--name nginx \
	-p 80:80 \
	--link kindlereport:kindlereport \
	--log-driver=fluentd \
	--log-opt fluentd-address=localhost:24224 \
	--log-opt tag="docker.{{.FullID}}" \
	kindlereport/nginx
