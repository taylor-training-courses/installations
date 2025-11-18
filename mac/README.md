# Development Setup on MacOS

Instructions are provided for those that prefer to do this themselves.

> Note: A user with __sudo__ is required for these instructions.

### Test Versions

* MacOS Tahoe v26

Instructions should work on all recent versions of MacOS.

## Contents

* [Setup](#setup)
* [Terminal](#terminal-app)
* [Command Line Tools](#command-line-tools)
* [Oh My Zsh](#oh-my-zsh)
* [Homebrew](./Homebrew.md)
* [Chrome](./Chrome.md)
* [iTerm 2](./iTerm2.md)
* [Visual Studio Code](./VSCode.md)
* [Git](./Git.md)
* [Python](.Python.md)
* [Go](./Go.md)
* [Node](./Node.md)
* [Java](./Java.md)
* [Docker](./Docker.md)

Foundation installs common software and components used in nearly all courses and videos.

## Setup

### Starting Point

Fresh installation of MacOS.

* 4K Monitor with resolution set to 1440p

## Terminal App

### Setup

* Apps: Search "Terminal"
* Add to Dock - adjust location on bar

### Hush Login

```zsh
touch .hushlogin
```

### Profile

* Open Terminal
  * Settings > Profiles
* Profile: Training (duplicate existing - Clear Dark)
  * Adjust for readability
  * Font Menlo - 26
  * Cols 150; Rows 36

## Command Line Tools

### Install

```zsh
xcode-select --install
```

* Click on "install" button
  * takes a few minutes

### Verify

```zsh
which git
git version
```

* Close terminal

### Update (after OS patch)

* System > General > Software Update
  * Check for updates
* "Update Now" next to "Command Line Tools for Xcode"
  * Agree to license
  * Takes a minute or so
* "Your Mac is Up to date" - Done

## Oh My Zsh

### Install

* Chrome > Search "oh my z"
  * ohmyz.sh
* Copy Oneline install script (curl)
* Open Termina app
* Paste line
* Edit profile script to change Theme to "simple"
* Restart Terminal

### Exit

* Quit Terminal and Chrome

