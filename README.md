# Squid Proxy

- [Basic HTTP proxy](http://www.squid-cache.org/)

While Squid is very powerful for caching proxy, it can also serve as a simple proxy pass-through with all caching turned off (default settings in squid.conf).

## How to Install

- Create a `passwords` file with a single line <username>:<hashed_password>, or use the one provided by removing the .example extension
  - Choose any username, should be in plaintext
  - Use `htpasswd -n username` to generate a hashed password
- Start up the proxy service with `docker compose up -d`
  - Make sure the port 3128 is open in UFW and your VPS firewall config (see your cloud host provider for instructions)
  
## Post Install
- Test the proxy locally with `curl -x http://username:password@<ip_address>:3128 http://ipv4.iplocation.net`
  - It should respond with the IP address of your proxy
