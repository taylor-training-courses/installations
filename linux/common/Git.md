# Git Install and Setup

The version of Git provided by most package managers should be fine but it will be a little out of date, so this document uses Homebrew to ensure the most up-to-date version of Git regardless of Linux distribution and/or version.

If you are content with your package manager's version of Git, skip to the Configuration section.


## Requirements

If you haven't already, ensure you have followed the corresponding Foundation instructions for your respective Linux distro or family:

* Foundation:
    * [Debian-based Foundation](../debian/Foundation.md)
    * [RedHat-based Foundation](../redhat/Foundation.md)

If you are using Arch - you are already a Linux demi-god and don't need my help to install stuff.

## Installation

### Git Install via Homebrew (preferred)

Use brew to install the latest version of Git:

```bash
brew install git
```

> Note: git-gui is highly optional, I rarely use it these days - but just in case:

```bash
brew install git git-gui
```

### Git Installation via Updated PPA on Debian systems

> Do not follow if Git is installed via Homebrew above. This is only an option for those that do not wish to use Homebrew.



### Verification

Restart Terminal app.

```
which git
git version
```

### Configuration

Git requires a bit of configuration before allowing us to do very much with it.

#### Minimal Settings

Set the Git user's name and email - this will be included with every commit (change) made by you.

__User Name and Email__:

```bash
git config set --global user.name "Your Name"
git config set --global user.email "your.name@domain.com"
```

#### Default Text Editor with Git

Set the core editor (used to edit commit messages, edit git config, etc). Your editor must already exist and the editor command needs to be accessible on the system path. Choose one of the following. This course uses Visual Studio Code.

__Nano__:

Simple terminal-based editor that comes Ubuntu/Linux Mint. Great option if prefer to say within the Terminal environment.

```bash
# Nano as default editor with Git
git config set --global core.editor nano
```

__Visual Studio Code__:

If you prefer [VSCode][vscode] as your default editor:

```bash
# VSCode as default editor with Git
git config set --global core.editor "code --wait"
```

#### Default Push Behavior

The old default was to push all changes on all branches. The new default (2.x) is to only push changes on the same branch, however, not setting this explicity caused Git to warn you about the change.

__Simple Pushing__:

```bash
# Use "simple" behavior for pushing
git config set --global push.default simple
```

#### Default Branch Name

Git still uses "master" as the default branch name if one isn't provided, but (nearly) all Git hosting providers have adopted "main" as the default - including GitHub. I recommend changing the default locally to "main" as the default is likely to change soon anyway.

__Main Default Branch__:

```bash
# Set default branch
git config set --global init.defaultBranch main
```

#### Remote Branch

Git does not automatically create a cooresponding remote "upstream" tracking branch upon first push.

__Remote Auto Setup__:

```bash
# automatically setup remote branch upon push
git config set --global push.autoSetupRemote true
```

#### Pager

By default, commands like "log" goes into less/more, which requires pressing "q" to exit. Setting up the pager, we can tell less to exit out if content does not requier paging.

```bash
git config set --global core.pager "less -X -F"
```



[vscode]: https://code.visualstudio.com/ "A code editor from Microsoft that doesn't suck"