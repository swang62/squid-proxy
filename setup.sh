#!/bin/bash

chmod +x ./rpipv6.sh

cp ./squid.conf /etc/squid/squid.conf
cp ./rpipv6.sh /etc/squid/conf.d/
cp ./rpipv6.service /etc/systemd/system/
