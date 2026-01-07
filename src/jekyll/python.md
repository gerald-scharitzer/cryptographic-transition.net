---
layout: default
title: Python @ cryptographic-transition.net
lastUpdate: 2026-01-07
---
# Python

web clients based on the standard library can use the module [`http.client`](https://docs.python.org/3/library/http.client.html) for HTTPS requests, where HTTPS depends on the module [`ssl`](https://docs.python.org/3/library/ssl.html).
This in turn depends on OpenSSL and its resolution at runtime can be read from [`ssl.OPENSSL_VERSION`](https://docs.python.org/3/library/ssl.html#ssl.OPENSSL_VERSION).

The module `urllib.request` uses `http.client` for HTTPS requests.
Both recommend the package `Requests` which does not seem to specify its TLS implementation, but [depends on `urllib3`](https://github.com/psf/requests/blob/main/setup.cfg).
