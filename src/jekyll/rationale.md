---
layout: default
title: rationale @ cryptographic-transition.net
lastUpdate: 2026-02-20
---
# Rationale

Our modern society relies on effective and efficient cryptography to enable trustworthy communication.
This is based on the following features of information security.

- Authenticity: We know who we talk to.
- Confidentiality: Only we know what we talked to each other.
- Integrity: What we said is what was heard.

## Public Key Cryptography

Authenticity relies on public key cryptography to sign messages and verify signatures without sharing secrets.

Confidentiality relies on public key cryptography to generate shared secret keys from separate private keys with clear text messages containing no secrets.

## Transport Layer Security and Secure Shell

One major usage of public key cryptography is Transport Layer Security (TLS).

TLS provides this security in major application layer protocols like HTTPS, LDAPS, FTPS, SMTPS, and STARTTLS.

Secure Shell (SSH) and thus SFTP also rely on public key cryptography.

## Mathematical Constructs

Major TLS signature and key exchange algorithms rely on the computational complexity of integer factorization and discrete logarithms.

- RSA relies on integer factorization
- Diffie Hellman (DH) and SSH rely on discrete logarithms

# Quantum Computers

We know that quantum computers theoretically solve these mathematical problems efficiently.

This means that increasing the key length does not provide effective security anymore.

# Post-Quantum Cryptography

We created new cryptographic algorithms, that resist both classic and quantum algorithms, and thus entered the phase of Post-Quantum Cryptography.

We implemented the new algorithms in major libraries.

We standardized some algorithms.

Now the clients must propose them, such that the servers can pick them.

You can secure your server by accepting quantum-safe algorithms only.

# Upgrade to Quantum-Safe Algorithms

Clients and servers can upgrade independently.

The TLS protocol picks the actual combination of algorithms and parameters based on lists of these.

# Points of Attention

Current quantum-safe algorithms require significantly more computing resources than their predecessors.

The higher-security method to use both classic and quantum-safe algorithms requires even more computing.
