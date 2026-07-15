---
layout: default
title: transition @ cryptographic-transition.net
lastUpdate: 2026-07-15
---
# The Cryptographic Transition

We replace the fundamental algorithms, the algorithmic foundation, that run our trust-based systems.

Our modern information society runs on rational and reasonable trust in upholding the following attributes of secure communications.

- __Confidentiality__: We communicate with each other and only we know what we communicated.
- __Authenticity__: We know who we communicate with.
- __Integrity__: What we received is what we sent each other.
- __Non-Repudiation__: We know who sent what.

Effective and efficient confidentiality relies on symmetric key cryptography,
which in turn relies on shared secret keys.

Generating shared secret keys relies on generating cryptographically secure random numbers,
and asymmetric key cryptography to derive shared secret keys without sharing all the input.

Securely transmitting secret keys to share them relies on asymmetric key cryptography to encrypt the secret keys.

# Private Keys

Exclusively knowing the private key enables exclusively to
- sign messages, such that practically no other entity can generate the same signature for this message, but
  practically all others can verify the signature, whether it matches the public key, and
- decrypt messages, which where encrypted with the matching public key.

# Physics

Both, generating and encrypting shared secret keys also rely on generating cryptographically secure random numbers.
This is where quantum random number generation based on physical randomness comes in.

Maintaining that trust [requires quantum-safe cryptography](pqc.html).

For cryptographic hash functions and symmetric cryptography you need sufficient hash and key sizes.

For asymmetric cryptography you need post-quantum cryptography like lattice- or hash-based algorithms.

For higher security you need hybrid cryptography, which uses both classic and post-quantum cryptography to gain the greater protection of both.

To uphold this level of security you need [cryptographic agility](agility.html).
