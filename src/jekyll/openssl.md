---
layout: default
title: OpenSSL @ cryptographic-transition.net
lastUpdate: 2026-01-28
---
# OpenSSL

provides quantum-safe algorithms as of [version 3.5](https://github.com/openssl/openssl/releases/tag/openssl-3.5.0).

The commands `openssl list -kem-algorithms` and  `openssl list -signature-algorithms` both list post-quantum and hybrid algorithms.

Get the current OpenSSL version with `openssl version -d`.

OpenSSL provides TLS for several major software projects.

[Python](python.html) clients use the installed OpenSSL.

Nginx [web servers](web-server.html) use the installed OpenSSL.

The OpenSSL `s_server` command runs a TLS server, but the [documentation of `s_server`](https://docs.openssl.org/3.6/man1/openssl-s_server/#bugs) itself reads:
"Because this program has a lot of options and also because some of the techniques used are rather old, the C source for this command is rather hard to read and not a model of how things should be done. A typical SSL server program would be much simpler."
