# NodeJS Install

## Requirements

* Foundation:
    * [Debian-based Foundation](../debian/Foundation.md)
    * [RedHat-based Foundation](../redhat/Foundation.md)
* [Git](./Git.md)

## Installation

### Install Node Version Manager

> You can check the GitHub repo for the lastest version: https://github.com/nvm-sh/nvm

NVM allows easy management of multiple versions or installs of NodeJS. Most importantly, it provides a consistent way to install Node.

One line install script:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
```

* Restart terminal

Verify install:

```bash
nvm --version
```

### Installation via NVM

Install the latest version of Node:

```bash
nvm install node --latest-npm
```

Install the latest LTS version of Node:

```bash
nvm install --lts --latest-npm --default
```

> Optional, but recommended - most companies prefer using LTS releases


### Validate installation

```bash
which node npm
node --version
npm --version
```


### Typescript

```bash
npm install -g typescript
which tsc
tsc --version
```

## VSCode Integration

* VSCode has native integration for Node, NPM, JavaScript and Typescript

## Global Node Tools

### Global Tools Install (via NPM)

```bash
npm install -g typescript webpack yarn express-generator sass
which tsc
tsc --version
```

### Verification

```bash
npm install -g typescript webpack yarn express-generator sass
which tsc webpack yarn express sass 
tsc --version
webpack --version
yarn --version
express --version
sass --version
```