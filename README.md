# squid-proxy

Basic HTTP proxy

## Instructions

- Create a passwords file with a single line username:<hashed_password>
  - Use `htpasswd -n username` to generate a hashed password
- Start up service with `docker compose up -d`
- Test proxy with `curl -x http://username:password@<ip_address>:8118 http://ipv4.iplocation.net`
