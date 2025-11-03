# SDKMan Install

## Purpose

SDKMan is a package manager that specifically manages dependencies within the Java-ecosystem. It is the perferred way to install Java, Maven, Groovy, Gradle and other Java-centric tools.

## Requirements

If you haven't already, ensure you have followed the corresponding requirements before moving forward.

* Foundation:
    * [Debian-based Foundation](../debian/Foundation.md)
    * [RedHat-based Foundation](../redhat/Foundation.md)
* [Git](./Git.md)

## Installation

Open a terminal and run:

```bash
curl -s "https://get.sdkman.io" | bash
```

* Restart terminal after installation

### Verification

```bash
sdk version
```
