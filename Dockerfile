FROM nginx

# set timezone
RUN cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

COPY nginx.conf /etc/nginx/nginx.conf
