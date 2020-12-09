#!/bin/bash
# Установка ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=21School/CN=localhost"