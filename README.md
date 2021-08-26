This is a Docker setup for using a Home Assistant server using nginx reverse proxy and Lets Encrypt.

# Initial Setup
After following these steps, this configuration _should_ work without additional modification
1) Fill out the variables in `.env`
2) Call `./init-letsencrypt.sh` to setup the initial certificates

# Starting the Server
To start the server, just run `docker-compose up`

If you would like to run this as a service on linux.  Create this file
/etc/systemd/system/ha-docker.service
```
[Unit]
Description=Docker Compose Service for Webserver ...
Requires=docker.service
After=docker.service

[Service]
WorkingDirectory=...
ExecStart=/usr/local/bin/docker-compose up
ExecStop=/usr/local/bin/docker-compose down
TimeoutStartSec=0
Restart=on-failure
StartLimitIntervalSec=60
StartLimitBurst=3

[Install]
WantedBy=multi-user.target
```
Then run `systemctl enable ha-docker`

# Data
All server data will be placed under the `./data` folder

# Special thanks
These two repos that were a great starting point:
 - https://github.com/wmnnd/nginx-certbot
 - https://github.com/chadweimer/docker-google-domains-ddns
