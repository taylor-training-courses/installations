# Java Tooling

## Requirements

* [Command Line Tools](./README.md#command-line-tools)

## SDKMan

### Installation

* Open browser
  * sdkman.io
    * Find one-line install script (latest version)

**or**

```bash
curl -s "https://get.sdkman.io" | bash
```

* Restart Terminal

### Verify SDKMan Install

```bash
sdk version
```

## Java

### Install

```bash
sdk install java
```

 ### Verify

```bash
which java
java --version
```

## Maven

### Install

```bash
sdk install maven
# or specific version
sdk install maven 3.9.11
```

### Verify

```bash
which mvn
mvn --version
```

## Groovy

### Install

```bash
sdk install groovy
```

### Verify

```bash
which groovy
groovy --version
```

## Gradle

### Install

```bash
sdk install gradle
```

### Verify

```bash
which gradle
gradle --version
```

