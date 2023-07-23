FROM caddy:2.6.4-builder AS builder

# Build a Caddy image with DuckDNS DNS-01 support
RUN xcaddy build \
  --with github.com/caddy-dns/duckdns@v0.4.0
FROM caddy:2.6.4
COPY --from=builder /usr/bin/caddy /usr/bin/caddy

