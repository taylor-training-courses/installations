# Installing NodeJS

## Requirements

* [Command Line Tools](./README.md#command-line-tools)

## Node Version Manager

### Installation

* Open browser
  * Search for "nvm"
    * top result - GitHub page
      * Find one-line install script (latest version)

**or**

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
```

* Restart Terminal

### Verify NVM Install

```bash
nvm --version
```

## Node - Latest

### Install

```bash
nvm install node --latest-npm
```

 ### Verify

```bash
which node npm
node --version
npm --version
```

## Node - LTS

### Install

```bash
nvm install --lts --latest-npm --default
```

### Verify

```bash
which node npm
node --version
npm --version
```

## Global Node Tools

### Install

```bash
npm install -g typescript webpack webpack-cli yarn express-generator sass
```

### Verify

```bash
which tsc webpack yarn express sass
tsc --version
yarn --version
express --version
sass --version
webpack --version
```

