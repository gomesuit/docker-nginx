#!/bin/sh

docker run -d \
	--name nginx \
	-p 80:80 \
	kindlereport/nginx
