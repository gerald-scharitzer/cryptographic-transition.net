---
layout: default
title: transition @ cryptographic-transition.net
lastUpdate: 2026-07-14
---
# The Cryptographic Transition

replaces the fundamental algorithms that run our trust-based systems.

Our modern information society runs on rational and reasonable trust in upholding the following attributes of secure communications.

- __Confidentiality__: We communicate with each other and only we know what we communicated.
- __Authenticity__: We know who we communicate with.
- __Integrity__: What we received is what we sent each other.
- __Non-Repudiation__: We know who sent what.

Efficient confidentiality relies on symmetric key cryptography,
which in turn relies on shared secret keys.

Generating shared secret keys relies on generating cryptographically secure random numbers and asymmetric key cryptography.

Both, generating and encrypting shared secret keys also rely on generating cryptographically secure random numbers.
This is where quantum random number generation comes in.

Exclusively knowing the private key enables exclusively to
- sign messages, such that practically no other entity can generate the same signature for this message, but
  practically all others can verify the signature, whether it matches the public key, and
- decrypt messages, which where encrypted with the matching public key.

Maintaining that trust [requires quantum-safe cryptography](pqc.html).

For cryptographic hash functions and symmetric cryptography you need sufficient hash and key sizes.

For asymmetric cryptography you need post-quantum cryptography like lattice- or hash-based algorithms.

For higher security you need hybrid cryptography, which uses both classic and post-quantum cryptography to gain the greater protection of both.

To uphold this level of security you need [cryptographic agility](agility.html).
