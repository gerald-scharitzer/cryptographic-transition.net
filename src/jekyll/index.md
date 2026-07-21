---
layout: default
title: cryptographic-transition.net
lastUpdate: 2026-07-22
---
# The Cryptographic Transition

changes the fundamental algorithms that run our trust-based systems.

[TL;DR](tldr.html): We change the set of algorithms that we use for asymmetric key cryptography,
to better protect against the reasonable potential processing capacity of modern systems, like quantum computers.

Our modern information society runs on rational and reasonable trust in upholding the following attributes of secure communications.

- __Confidentiality__: We communicate with each other and only we know what we communicated.
- __Authenticity__: We know who we communicate with.
- __Integrity__: What we received is what we sent each other.
- __Non-Repudiation__: We know who sent what.

Maintaining that trust [requires quantum-safe cryptography](rationale.html).

For cryptographic hash functions and symmetric cryptography you need sufficient hash and key sizes.

For asymmetric cryptography you need post-quantum cryptography like lattice- or hash-based algorithms.

For higher security you need hybrid cryptography, which uses both classic and post-quantum cryptography to gain the greater protection of both.

To uphold this level of security you need [cryptographic agility](agility.html).
