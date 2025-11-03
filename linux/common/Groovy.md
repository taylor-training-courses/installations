# Groovy Installation

## Requirements

If you haven't already, ensure you have followed the corresponding requirements before moving forward.

* Foundation:
    * [Debian-based Foundation](../debian/Foundation.md)
    * [RedHat-based Foundation](../redhat/Foundation.md)
* [Git](./Git.md)
* [SDKMan](./SDKMan.md)
* [Java](./Java.md)

## Installation

Open a terminal, use SDKMan to install the latest version of Java:

```bash
sdk install groovy
```

Restart terminal session.

### Verification

```bash
which groovy
groovy --version
```

## Visual Studio Code Integration

> Optional, but recommended if using VSCode for Java development

Open VSCode:

* Go to Extensions
* Search for "Groovy"
* Choose the "Groovy" extension by Mellow Marshmellow (or another one, there isn't an "official" extension)