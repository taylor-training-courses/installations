# Gradle Installation

## Requirements

If you haven't already, ensure you have followed the corresponding requirements before moving forward.

* Foundation:
    * [Debian-based Foundation](../debian/Foundation.md)
    * [RedHat-based Foundation](../redhat/Foundation.md)
* [Git](./Git.md)
* [SDKMan](./SDKMan.md)
* [Java](./Java.md)
* [Groovy](./Groovy.md)

## Installation

Open a terminal, use SDKMan to install the latest version of Java:

```bash
sdk install gradle
```

Restart terminal session.

### Verification

```bash
which gradle
gradle --version
```

## Visual Studio Code Integration

> Optional, but recommended if using VSCode for Java development

Open VSCode:

* Go to Extensions
* Search for "Gradle"
* Choose the "Gradle for Java" extension by Microsoft