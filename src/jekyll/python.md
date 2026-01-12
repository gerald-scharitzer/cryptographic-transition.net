---
layout: default
title: Python @ cryptographic-transition.net
lastUpdate: 2026-01-07
---
# Python

web clients based on the standard library can use the module [`http.client`](https://docs.python.org/3/library/http.client.html) for HTTPS requests, where HTTPS depends on the module [`ssl`](https://docs.python.org/3/library/ssl.html).
This in turn depends on OpenSSL and its resolution at runtime can be read from [`ssl.OPENSSL_VERSION`](https://docs.python.org/3/library/ssl.html#ssl.OPENSSL_VERSION) or its variants.

## Requests module

The module `urllib.request` uses `http.client` for HTTPS requests.
Both recommend the package `Requests` which [comes with](https://requests.readthedocs.io/en/latest/user/advanced/#transport-adapters) and [depends on `urllib3`](https://github.com/psf/requests/blob/main/setup.cfg).

Set ciphers in the `SSLContext` with [`urllib3.util.create_urllib3_context`](https://urllib3.readthedocs.io/en/stable/reference/urllib3.util.html#urllib3.util.create_urllib3_context).

[Set the `SSLContext`](https://urllib3.readthedocs.io/en/stable/advanced-usage.html#custom-ssl-contexts) in the [`PoolManager`](https://urllib3.readthedocs.io/en/stable/reference/urllib3.poolmanager.html).
