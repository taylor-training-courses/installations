# Development Setup on Windows

> Note: A user with __Administrator__ rights is required for these instructions.

### Tested Editions and Versions

* Windows 11 Home
* Windows 11 Pro

> Windows 10 is no longer supported, but should still work with a few minor adjustments. Enterprise or other editions of Windows 11 should also still work.

### Options

There are two primary paths when using Windows. You can stay with "native" Windows - although you may need to make a few adjustments along the way. Or, install most items via Windows Subsystem for Linux.

Native Windows:
* (pro) Slightly faster initial start up
* (pro) No virtual machine layer (less complex)
* (con) Some Linux tools don't work well natively in Windows

Windows Subsystem for Windows:
* (pro) Linux command line tools just work
* (pro) Consistent with Linux based worflows
* (pro) Integrates with native Windows tools/apps like Notepad
* (pro) Can access Windows files
* (con) Slightly slower initial startup
* (con) Virtual machine layer adds complexity
* (con) Requires VSCode server to communicate with VSCode on Windows
* (con) Requires enabling the WSL feature and a few restarts

## Contents

* [Foundation](./Foundation.md)
* Using Windows Subsystem for Windows:
    * Enabling WSL
* Native Windows:
    * [Git for Windows](./Git-on-Windows.md)

