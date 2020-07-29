# Git for Windows Installation

Target: Windows 10. Most recently tested on Windows 10 Pro v2004 (May 2020)

## Installation

Download the appropriate Windows platform binary (32 vs 64 bits) from https://git-scm.com/download/win

Confirm you downloaded the correct installer, sometimes the website will misidentify you and thus give you the wrong installer.

### Installer Options

Run the installer and make the following choices when prompted:

* Components: Additional Icons
* Editor: Nano
* Path: Middle Open (Command Line + 3rd party)
* HTTPS Backend: OpenSSL
* Line Endings: Middle open (checkout as-is, commit Unix-style)
* Terminal: MinTTY
* Git Pull: Leave default
* Creds Helper: Git Credential Manager (middle option)
* Extra Options: Default options
* Experimental support: Leave unchecked

Git installer gets updated frequently, with options being added and removed. If new options appear, go with the default recommendations.

### After Installation

Open Git Bash and type: `git version` to confirm Git is installed.

Use Git Bash desktop icon to "Pin to Start" and "Pin to Taskbar"

## Resize Git Bash

Most likely Git Bash will look very small - especially on super high resolution screens (1440p and 4k).

With Git Bash open, click on the Window icon (upper left), then choose "Options..." from menu.

### Recommended Settings

* Looks > Block Cursor
* Text > Font set to Consolas at size 20 for 1080p or 28 for 1440p or 40 for 4k
* Window > 120 Columns and 32 rows.

| Resolution | Font Size | Columns | Rows |
|---|:---:|:---:|:---:|
|1080p|20|120|32|
|1440p|28|120|32|
|2160p (4K)|40|120|32|

Chart assumes 100% scaling in Display settings.

For 1440p, you can use 1080p settings at 150% scaling and 4K can use 1440p settings at 150% scaling (see Desktop settings).

### Save

Click _Save_ button once done making changes. Then close Git Bash and reopen to confirm settings will fit will within your screen. If something doesn't fit right - repeat the process with new setting until everything look good. Save and restart Git Bash between attempts.

## Git Prompt

I use the Git Prompt shell script in all my courses to provide a similar looking prompt across all platforms I support (Windows, Mac and Linux).

The way Git Bash already displays the prompt is already pretty good so this optional for Windows users.

### Bash Scripts

Git Bash will look for the [.bash_profile](.bash_profile) file. Since a lot of systems will load the .bashrc file instead, I have setup this file to simply call the (.bashrc) file - which contains the actual code for setting up the prompt. That file, in turn, calls the [Git Prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh) script.

Feel free to review the source of the [.bashrc](.bashrc) and [.bash_profile](.bash_profile) files, which you can copy to your local system, or you can simply run the following commands to use the `curl` utility to download all the files needed.

This script assumes you don't already have these files on your system, which should be the case if you _just_ installed Git for Windows.

To be sure, run the command `ls -al` - if you find either a `.bashrc` file or `.bash_profile`, back those up first _or_ you can simply review contents of the files here and append your copies instead of using the commands below.

From within Git Bash, run:

```bash
cd ~
curl -o .git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o .bashrc https://raw.githubusercontent.com/taylor-training-courses/installations/master/windows/git/.bashrc
curl -o .bash_profile https://raw.githubusercontent.com/taylor-training-courses/installations/master/windows/git/.bash_profile
```

Note: You can _copy_ each of the above lines and then use _Shift + Insert_ to _paste_ within Git Bash.

Once all the files have been downloaded (or you appended their contents into your own files), restart Git Bash.

## Git Configuration

We need to provide Git some basic Configuration information. Really, only two bits of information are required - User's name and email address (although you _can_ use a fake email address) - although, technically, a handful of Git commands will work regardless, you can't do very much however.

Use Git's `config` subcommand to setup our "global" settings:

```bash
git config --global user.name "Your Full Name"
git config --global user.email "you@someplace.com"
git config --global push.default simple
git config --global core.editor nano
```

Last two options are technically redundant since _simple_ is Git's current _default_ behavior - but I've noticed setting this will avoid any notices or messages about it from Git. Also, we already set _nano_ as the default editor during the Install process (unless you choose differently). However, that setting was set at the Git Install level (systemwide). This setting is at the _user_ level, so we _could_ specify another editor later on.

There are several ways to display the Git configuration:

```bash
git config --global --list
git config --global -e
cat ~/.gitconfig
nano ~/.gitconfig
```

The first command, asks Git to list it's configuration settings. The second command asks Git to use its default editor to open the config file. The last two commands are just variations of opening or displaying the contents of the Git configuration file outside of Git.

## P4Merge

Git comes with commands to show differences between commits, branches or tags - via the command line - which is ok for small changes. However, a graphical tool would be nice to have.

There are a handful of diff and merge tools available for Git. Some are paid and some are free. Of the free options, the best one is still P4Merge (also known as Helix Visual Merge Tool) from Perforce. It provides one of the few three-way merge tools available for free. If you refer to use a text editor (Atom/VSCode) with built-in diff capabilities, and IDE or have another diff/merge tool, then skip this step.

### Download

Website: https://www.perforce.com/downloads/visual-merge-tool

Choose your OS, platform (32/64-bits) and version (often grayed out).

Click _Download_ button, when prompted to register, you _may_ skip (see link at the top).

### Installation

Run installer. Uncheck all items, except "Merge and Diff Tool (P4Merge)", then Install. Exit when complete.

### Git Integration

Need to tell Git about P4Merge as diff and merge tool.

Let's start by setting up P4Merge as our graphical compare tool with Git:

```bash
git config --global diff.tool p4merge
git config --global difftool.p4merge.path "C:/Program Files/Perforce/p4merge.exe"
git config --global difftool.prompt false
```

Now, let's configure P4Merge as the graphical merge tool for Git:

```bash
git config --global merge.tool p4merge
git config --global mergetool.p4merge.path "C:/Program Files/Perforce/p4merge.exe"
git config --global mergetool.prompt false
git config --global mergetool.keepBackup false
```

The above commands should work, but some systems may require converting the paths to Unix friendly versions where C: is replaced with /c/. Or, you can try using single quotes with Windows-friendly backslashes.
