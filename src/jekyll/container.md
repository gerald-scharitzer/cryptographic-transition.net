---
layout: default
title: container @ cryptographic-transition.net
lastUpdate: 2026-08-19
---
# Containers

are operating system processes.

Linux processes have [limits on argument and environment](https://man7.org/linux/man-pages/man2/execve.2.html) parameters.

# Containerize Everything

processes need processors and memory.
They use abstractions like file systems and sockets.

Reducing the system requirements to the operating system kernel opens up a wide ecosystem of software.

Different work node types with different operating systems open this dimension as well.

Using different instruction set architectures works the same;
They can cooperate, because they communicate via open standards.
Major parent images like `alpine`, `eclipse-temurin` and `python` are available for open instruction set architectures like `riscv64`.

Alpine Linux itself provides [cloud images](https://alpinelinux.org/cloud/) for the architectures `x86_64` and `aarch64` only.
