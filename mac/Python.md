# Installing Python

## Requirements

* [Homebrew](./Homebrew.md)

## Install via Homebrew

```bash
brew install python
```

Installs latest version.

### Un-versioned Python Commands

Edit the `.zshrc` file.

```bash
export PATH="$(brew --prefix python)/libexec/bin:${PATH}"
```

### Test  Versions

```bash
which python python3 pip pip3
python3 --version
python --version
pip3 --version
pip --version
```



## VSCode Extension

* Open VSCode
* Go to Extensions. 
  * Type "python" - choose the Python extension by Microsoft.
    * Install
* Close VSCode.