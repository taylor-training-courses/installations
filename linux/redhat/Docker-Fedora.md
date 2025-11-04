# Docker for Fedora

## Purpose

Installs Docker engine on Fedora-based systems.

## Requirements

If you haven't already, ensure you have followed the corresponding requirements before moving forward.

* [Foundation](./Foundation.md)
* [Git](../common/Git.md)

> Only follow on a Fedora-based distribution of Linux

## Documentation

This document takes from the official documentation:

* [Docker Engine on Fedora](https://docs.docker.com/engine/install/fedora/)
* [Post Install steps on Linux](https://docs.docker.com/engine/install/linux-postinstall)

## Installation

### Uninstall Possible Older Docker Installs

List of possible packages installed from other methods to install Docker.

```bash
sudo dnf remove docker \
        docker-client \
        docker-client-latest \
        docker-common \
        docker-latest \
        docker-latest-logrotate \
        docker-logrotate \
        docker-selinux \
        docker-engine-selinux \
        docker-engine
```

### Installation of Docker for Fedora-based Systems

Add Docker repo to DNF:

```bash
sudo dnf -y install dnf-plugins-core
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
```

Install Docker:

```bash
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Start Docker:

```bash
sudo systemctl enable --now docker
```

### Validation

Ensure the "docker" command is available on the PATH, get the version, and make sure the docker deamon is running.

```bash
which docker
docker --version
sudo systemctl status docker
```

## Post-Install Instructions

Add the docker group (should exist already):

```bash
sudo groupadd docker
```

Add logged in user to group:

```bash
sudo usermod -aG docker $USER
```

Now, log off and log back, and open Terminal again:

```bash
docker run hello-world
```

> Note, if running Linux within a virtual machine, a full reboot may be required.