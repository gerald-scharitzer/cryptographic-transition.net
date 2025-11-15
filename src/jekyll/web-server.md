---
layout: default
title: Web Server @ cryptographic-transition.net
lastUpdate: 2025-11-14
---
# Web Servers

must be able to first accept, then pick, and finally require quantum-safe algorithms.

## Nginx

uses [TLS 1.3 per default](https://nginx.org/en/docs/http/ngx_http_ssl_module.html#ssl_protocols) since version 1.23.4 and that needs OpenSSL 1.1.1 or higher.

Nginx is [statically and dynamically](https://nginx.org/en/docs/http/configuring_https_servers.html#sni) bound to the  [OpenSSL](https://nginx.org/en/docs/http/ngx_http_ssl_module.html) library.

The [specification of the TLS ciphers](https://nginx.org/en/docs/http/ngx_http_ssl_module.html#ssl_ciphers) and the OpenSSL version determine the used algorithms.

Nginx is available for [Alpine Linux](https://nginx.org/en/linux_packages.html#distributions).

The [`nginx`](https://hub.docker.com/_/nginx) container image at Docker Hub is maintained by the [NGINX Docker Maintainers](https://github.com/nginx/docker-nginx) and provided with the [BSD 2-Clause "Simplified" License](https://github.com/nginx/docker-nginx/blob/master/LICENSE).

The image `nginx:1.29.3-alpine3.22-slim` can install the package `openssl-3.5.4-r0` with `apk add --no-cache openssl`, but the command `openssl ciphers -v` does not list any post-quantum key exchange or authentication algorithms **(FIXME)**.
The commands `openssl list -kem-algorithms` and  `openssl list -signature-algorithms` both list post-quantum and hybrid algorithms.
