# Windows 10 Installations

This is the collection of installation resources for various software, tools and languages in support of my courses.

## Initial Setup

### About Windows

Make sure you know which edition, platform (32/64-bit) and version of Windows (not just Windows 10).

* Right click on Start > System from menu
* Review About page

### Command Prompt

Super high resolution displays can make the Command Prompt look very small.

Open and Pin Windows Command Prompt:

* Start menu > Windows System > Command Prompt
* Pin to Start, create "Tools" Group
* Pin to Taskbar

Change Default settings:

* Open Command Prompt > Window icon (upper left-side) > Defaults
* Settings
  * Options
    * Cursor Size: Large
  * Font
    * Size: 28 (1080p) or 36 (1440p) or 56 (4k)
    * Font: Consolas (default)
  * Layout (defaults)
    * Screen buffer size:
      * Width: 120
      * Height: 9001
    * Window size
      * Width: 120
      * Height: 32

Settings per Resolution:

| Resolution | Font Size | Columns | Rows |
|---|:---:|:---:|:---:|
|1080p|28|120|32|
|1440p|36|120|32|
|2160p (4K)|56|120|32|


### Services

For courses using Services feature, make it easy to access by pinning it to the Start (Tools group)

* Start menu > Windows Administrative Tools > Services
* Pin to Start, move into Tools Group
* Pin to Taskbar

## Git for Windows

See dedicated [Git for Windows Install Guide](git/README.md)

## Atom

Name: W10-03-01_Atom-Install
Name: W10-03-02_Atom-Config
Name: W10-03-03_Atom-Git

Atom is a simple, yet powerful text editor.

Download: [Atom.io](https://atom.io)

### Install

* Click on Download button
* Run installer (no settings, just wait for finish)
* Pin to Start, add to Tools group
* Pin to Taskbar

### Settings

I like making Atom easier to read within my videos.

* Stylesheet:

```stylesheet
.tree-view {
  font-size: 14pt;
}

atom-text-editor {
  font-size: 20pt;
}
```

### Git Integration

```bash
git config --global core.editor "atom --wait"
git config --global -e
```
