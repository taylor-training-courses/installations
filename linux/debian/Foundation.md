# Foundational Setup on Debian-family Distributions

Installs foundational components and software for most technical courses and part of the "Software Developement" setup instructions. All courses will assume at least these items have been installed with the following settings. If you deviate from these instructions, adjust accordingly (aka you're on your own).




## Setup

### Starting Point

Fresh installation of a recent Debian based Linux distribution:

* Debian 13
* Ubuntu 24.04 LTS, 25.XX
* Kubuntu 24.04 LTS, 25.XX
* Zorin 18
* Linux Mint 22.X
* Pop!OS 22.X

There are only minor differences between distros if we use Homebrew to install required software.

### Konsole / Terminal App

> Setting for 4K at 150% zoom

* Create new Terminal profile (Training) 
    * Font: Monospace 20pt
    * Window: 150 Cols; 30 Rows

### Update Apt

Let's make sure all existing packages are already updated.

```bash
sudo apt update
sudo apt upgrade -y
```

### Requirements

Let's make sure all existing packages are already updated.

```bash
sudo apt install git curl wget nano zip unzip build-essential 
```

## Chrome

> Very optional, used for consistancy

### Installation

Open web browser, go to http://google.com/chrome and then click on "Download Chrome" button. Choose "deb" package (Debian/Ubuntu), then "Accept and Install."

Installer should be downloaded to "Downloads" folder. Install deb package directly using "apt": 

```bash
# notice specific file name
ls ~/Downloads

# Use Apt to install Google Chrome
sudo apt install ~/Downloads/google-chrome-stable_current_amd64.deb
```

Once Chrome has been installed, delete the package file:

```bash
rm ~/Downloads/google-chrome-stable_current_amd64.deb
```

Refresh `apt` repos:

```bash
sudo apt update

# newer distros may want to "modernize" the repos
```

Ensure there are no errors.

### Shortcuts / Setup

> Optional - but nice if using Chrome as primary browser

Find Chrome within the Start menu (look under All Applications or Internet).

* Right click:
    * Add to toolbar / dock
    * Add to favorites
    * Add to Desktop

### Default

Open Chrome - set as default (if asked).

### Page Zoom

Settings - Appearance - Page Zoom:

* Resize to taste
* 125% to 150% (4p/150% zoom target)

### Cleanup

* Remove shortcuts from default page in Chrome
* Add bookmark bar

### Optional Shortcuts

* GitHub

## Oh My Bash

> Technically optional but used in all my courses - using this instead of Git Prompt

Do a web search for "Oh My Bash" - should be a top result (GitHub page). Find the "one line" script and paste and run in Terminal app.

**or**

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```

Restart Terminal app to confirm setup.

## Homebrew for Linux

> Sudo access will be required

I prefer to use Homebrew to ensure I get the latest versions of the software I care about the most and this is basically required for older distros.

Open browser: https://brew.sh and copy the one-line setup script, and paste into Terminal app.

**or**

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Read the "Next steps" section - it will include commands to run to ensure Homebrew is accessible to future Terminal sessions.

```bash
echo >> ~/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

To ensure everything is setup correctly, restart the Terminal app, then:

```bash
which brew
brew --version
```

Then, search for and then install a package with Homebrew:

```bash
brew search gcc
brew install gcc
```

You will likely need to restart the Terminal session to see newly installed packages in your path.

## Visual Studio Code

### Installation

Open web browser and search for "Visual Studio Code" - pick one of the top links - which should go to https://code.visualstudio.com

On main page, click on "download" - should give option between deb and rpm - pick deb.

Direct Link: https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64

That will download DEB package to downloads folder.

```bash
# notice specific file name
ls ~/Downloads

# Use Apt to install Google Chrome
sudo apt install ~/Downloads/google-chrome-stable_current_amd64.deb
```

**OR**

```bash
wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O ~/Downloads/vscode.deb
sudo apt install ~/Downloads/vscode.deb
rm ~/Downloads/vscode.deb
```

### Confirm Installation


```bash
which code
code --version
```

### Setup

Open VSCode from terminal.

```bash
code .
```

Dismiss Welcome page and resize window to taste.

### Shortcuts

Find VSCode within the Start menu (look under All Applications or Development).

* Right click:
    * Add to toolbar / dock
    * Add to favorites
    * Add to Desktop

### CoPilot Integration

> Required for some AI coures, but otherwise optional.

Open default web browser first, login to GitHub.

Open VSCode. Click on CoPilot icon in bottom-right corner. Click "Setup", then choose the "GitHub" option.

Return to Web browser, which should have a "continue" option to authorize VSCode to talk with GitHub.

After authorization, should take you back to VSCode. Choose "Ask" mode and an AI agent - ask a simple question or simply say "hi"

## Git

The version of Git provided by most package managers should be fine but it will be a little out of date.

### Git Install (via Homebrew)

Use brew to install the latest version of Git:

```bash
brew install git git-gui
```

> Note: git-gui is highly option, I rarely use it these days

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

If you prefer VSCode as your default editor:

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

## Conclusion

These are all the tools needed for the Git Going Fast course. If you followed this instruction guide, you can continue along starting with the Chapter 3 - 



[vscode]: https://code.visualstudio.com/ "A code editor from Microsoft that doesn't suck"