# Docker for Ubuntu

## Purpose

Installs Docker engine on Ubuntu-based systems.

## Requirements

If you haven't already, ensure you have followed the corresponding requirements before moving forward.

* [Foundation](./Foundation.md)
* [Git](../common/Git.md)

> Only follow on an Ubuntu-based distribution of Linux

## Documentation

This document takes from the official documentation:

* [Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
* [Post Install steps on Linux](https://docs.docker.com/engine/install/linux-postinstall)

## Installation

### Uninstall Possible Older Docker Installs

List of possible packages installed from other methods to install Docker.

```bash
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do \
    sudo apt-get remove $pkg; \
done
```

### Installation of Docker for Ubuntu-based Systems

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
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