#!/bin/bash

envsubst '${HOSTNAME}' < /var/nginx/app.conf.template > /etc/nginx/conf.d/app.conf

while true
do
    sleep 6h &
    wait $!

    envsubst '${HOSTNAME}' < /var/nginx/app.conf.template > /etc/nginx/conf.d/app.conf
    nginx -s reload
done &

nginx -g "daemon off;"
