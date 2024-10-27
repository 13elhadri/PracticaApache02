#!/bin/bash

if [ ! -L /etc/nginx/sites-enabled/yahya.com.conf ]; then
  ln -s /etc/nginx/sites-available/yahya.com.conf /etc/nginx/sites-enabled/
fi

if [ ! -L /etc/nginx/sites-enabled/elhadri.com.conf ]; then
  ln -s /etc/nginx/sites-available/elhadri.com.conf /etc/nginx/sites-enabled/
fi

if [ ! -L /etc/nginx/sites-enabled/seguro.net.conf ]; then
  ln -s /etc/nginx/sites-available/seguro.net.conf /etc/nginx/sites-enabled/
fi

nginx -s reload

nginx -g 'daemon off;'