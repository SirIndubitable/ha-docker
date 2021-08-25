This is a Docker setup for using a Home Assistant server using nginx reverse proxy and Lets Encrypt.

To use this, the first time it's started you must use `init-letsencrypt.sh` before yout start.
Once that is run, to get the server up and running.  Just call `docker-compose up`

Special things to these two repos that were a great starting point:
 - https://github.com/wmnnd/nginx-certbot
 - https://github.com/chadweimer/docker-google-domains-ddns
