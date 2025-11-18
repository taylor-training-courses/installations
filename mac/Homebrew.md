# Homebrew

## Requirements

* [Command Line Tools](./README.md#command-line-tools)

## Install

* Chrome > search "homebrew"
  * brew.sh
* Copy script line
* Open Terminal app
* Paste script line
  * Enter password when prompted

**or**

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Post Install

* Copy and paste lines from end of install script to update profile

```bash
echo >> /Users/$USER/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Verify

* Restart

```zsh
which brew
brew --version
```

## Cleanup

* Exit Chrome and Terminal app

## Updating Homebrew

```bash
# Updates Brew itself
brew update
# Updates any outdated packages
brew upgrade
```