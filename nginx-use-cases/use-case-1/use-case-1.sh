#!/bin/bash
# Multiple domain on the same machine, say for example
# example.com and example.org are two different website
# hosted on the same nginx on a machine.

# 1. Update /etc/hosts file for local testing
# production system, it has to be updated at DNS level
# CNAME and A record need to be created/updated if needed.
# sudo vi /etc/hosts
# 127.0.0.1 localhost example.org example.com

# 2. Adding two website domain configs
mkdir -p /usr/local/etc/nginx/servers
cp example.com.conf example.org.cong /usr/local/etc/nginx/servers

mkdir /var/www
chmod -R 755 /var/www
mkdir -p /var/www/example.com/html
mkdir -p /var/www/example.org/html

cat <<EOF >> /var/www/example.com/html/index.html
<html>
  <body>
    <title>Example.com</title>
  </head>
  <body>
    <h1>Success - example.com Nginx server block is working!</h1>
  </body>
</html>
EOF

cat <<EOF >> /var/www/example.org/html/index.html
<html>
  <body>
    <title>Example.org</title>
  </head>
  <body>
    <h1>Success - example.org Nginx server block is working!</h1>
  </body>
</html>
EOF