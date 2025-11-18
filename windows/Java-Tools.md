# Java Tooling

## Installation of SDKMan

SDKMan requires "zip" installed for GitBash

### Validate WinGet

```bash
WinGet --version
WinGet search GnuWin32
```

### Install Zip and Unzip

Install Zip tools (via WinGet):

```bash
WinGet install GnuWin32.Zip
WinGet install GnuWin32.UnZip
```

### Locate GnuWin32 folder

* Find GnuWin32 in "C:\Program Files (x86)" folder
* Copy path to "bin" directory

### Update Path

Add System Environment variable:

* Search (taskbar) for "env"
* Edit System Variables
* PATH variable
* Add
* Paste path to GnuWin32 bin folder (C:\Program Files (x86)\GnuWin32\bin)

### Verify Path

```bash
which zip unzip
zip --version
unzip --version
```

### Install SDKMan

Install:

* Go to sdkman.io
* Copy one line install script

__or__:

```bash
curl -s "https://get.sdkman.io" | bash
```

* Restart Terminal

Validate:

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
java --version
```

## Maven

### Install

```bash
sdk install maven
```

### Verify

```bash
mvn --version
```

## Groovy

### Install

```bash
sdk install groovy
```

### Verify

```bash
groovy --version
```

## Gradle

### Install

```bash
sdk install gradle
```

### Verify

```bash
gradle --version
```

