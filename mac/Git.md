# Git

## Requirements

* [Homebrew](./Homebrew.md)

## Install via Homebrew

> Note: Majority of courses don't use the Git-GUI app.

Without GUI:

```zsh
brew install git
```

With GUI:

```zsh
brew install git git-gui
```

## Verify

* Restart terminal

```zsh
which git
git version
```

## Help

```bash
git --help
git help config
git config --help
git help --help
```

## Setup

### Basics

```bash
git config set --global user.name "Your Name"
git config set --global user.email "you@yourdomain.com"
git config list --global
```

### Core Editor (nano)

```bash
git config set --global core.editor nano
git config edit --global
# ctrl+x to exit
```

### Simple Push

```bash
git config set --global push.default simple
```

### Default Branch

```bash
git config set --global init.defaultBranch main
```

### Remote Auto Setup

```bash
git config set --global push.autoSetupRemote true
```

### Pager (Zsh)

```bash
git config set --global core.pager "less -X -F"
```

### Review Settings

```bash
git config list --global
git config edit --global
cat .gitconfig
code .gitconfig
```

## VSCode Integration

### Verify VSCode

```bash
which code
code --version
```

### Core Editor

```bash
git config set --global core.editor "code --wait"
git config edit --global
```

