# Foundational Setup on Windows

Installs foundational components and software for most technical courses and part of the "Software Developement" setup instructions. All courses will assume at least these items have been installed with the following settings. If you deviate from these instructions, adjust accordingly (aka you're on your own).

## Setup

### Starting Point

Fresh installation of a recent edition of Windows:

* Windows 11 Home
* Windows 11 Pro

> Both Home and Pro editions of Windows 11 support Windows Subsystem for Linux version 2 (WSL v2).

### Update System and Store Apps

Run Windows Update to make sure you have the latest updates possible before starting. Additionally, so the same within the Microsoft Store.

### Desktop Tweaks

* Change display
    - Using 4K monitor but setting zoom/scaling to 150%
* Remove distracting icons on task bar
* Remove clock from task bar
* Uninstall distracting and unneeded applications.

## Chrome

While Microsoft Edge is acceptable, I have standardized all my courses around Google Chrome for consistency.

> This is highly optional, but adjust accordingly if you continue to use Edge or install another browser.

### Install Chrome

* Open Edge, go to: https://google.com/chrome
* Accept license
* Download installer
* Run Chrome

### Setup

* Login to Google Account (optional)
* Set as Default
* Setting > Appearance > Page zoom > 150%
* Setup Icons (Start Menu, Taskbar, Desktop)

## Visual Studio Code (aka VSCode)

> You can install VSCode either before _or_ after installing Git.

This course uses [Visual Studio Code][vscode] as the primary code editor since it is cross-platform and available on all operating systems supported by this course. Go to the [Visual Studio Code][vscode] website. The web page should detect you are browsing on a Windows system and offer you the correct installer.

### Installation

Once the installer is downloaded, run the installer.

Setup > Additional Tasks:

* Check all items

Assume defaults unless specified above.

### Icons

I like to add or ensure the VSCode icon is available:

* Desktop
* Start Menu
* Taskbar

### Code Command

After the installation, open your Terminal/Command Prompt and type:

```bash
code
```

This should open VSCode directly from you Terminal application.

### Resize to Taste

You can use the keyboard shortcut "Ctrl and Plus" together to increase the user interface, including text contents. For my screen, I did this 4 times to reach a nice readability on my screen.

### Setup CoPilot

> This requires a GitHub account if you don't already have one. This is optional for all courses not focused on AI usage.

* Open your browser, login to your GitHub Account. Keep browser open.
* Open VSCode, click on CoPilot icon (lower-right corner)
* Setup CoPilot > Login with GitHub
* Return to Browser - authorize VSCode
* Click on "Open" to return to VSCode when prompted.
* CoPilot should be logged into GitHub and ready for use - test it out:
    * Switch to Ask mode
    * Choose a free agent (top options)
    * Ask it "how are things going" or something similar


## Conclusion

These are the foundational tools or components required for my courses and videos.


[vscode]: https://code.visualstudio.com/ "A code editor from Microsoft that doesn't suck"