---
layout: default
title: Cryptographic Agility
lastUpdate: 2025-12-10
---
# Cryptographic Agility

is the ability to uphold the goals of information security by performing cryptographic functions within a set of secure algorithms.

When an algorithm is identified as insecure, then you want to be able to quickly remove it from your set of secure algorithms and work on with the remaining set.

This needs at least two different algorithms for each category of cryptographic functions.

- Hash functions
- Key exchange
- Asymmetric encryption and decryption
- Symmetric encryption and decryption
- Signature

Quantum-safe agility needs at least two different quantum-safe algorithms for each category.

## Map

Cryptographic agility maps the communication nodes to cryptographic features.

| Node             | TLS     |
|------------------|---------|
| Python client    | OpenSSL |
| Nginx web server | OpenSSL |
