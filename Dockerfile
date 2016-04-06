FROM nginx

# set timezone
RUN cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

COPY kindlereport.conf /etc/nginx/conf.d/kindlereport.conf

RUN rm -f /etc/nginx/conf.d/default.conf

