---
layout: default
title: service mesh @ cryptographic-transition.net
lastUpdate: 2026-08-15
---
# Service Mesh

controls communication and if TLS is done by the mesh, then this needs only one TLS implementation.

TLS is managed centrally by the control plane of the service mesh.

This enables crypto agility by knowing which communication uses which cryptography, and
controlling centrally which cryptography is used.

Wrapping communication in TLS brings along workload identity.
