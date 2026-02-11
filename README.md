# Squid Proxy

- [Basic HTTP proxy](http://www.squid-cache.org/)

While Squid is very powerful for caching proxy, it can also serve as a simple proxy pass-through with all caching turned off (default settings in squid.conf).

## Setup environment

Make sure the port 3128 is open in UFW and your VPS firewall

```
apt install squid apache2-utils

# Add basic auth
htpasswd -c /etc/squid/passwords <username>

# Confirm
cat /etc/squid/passwords
```

## Config

Update the ipv6 range to the /64 subnet of your interface

- Copy `squid.conf` to `/etc/squid/squid.conf` (delete all other \*.conf in conf.d)
- Copy `rpipv6.sh` file to `/etc/squid/conf.d`
- Copy service file `rpipv6.service` to `/etc/systemd/system`

```
systemctl enable --now squid
systemctl enable --now rpipv6

# Test locally
curl -x http://user:pass@[::1]:3128 https://ifconfig.me/ip

# Test remote connections with
curl -x http://user:pass@<ip_address>:3128 https://ifconfig.me/ip`
```
