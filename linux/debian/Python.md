# Python Install

### Installation via Homebrew

```bash
brew install python
```

Update `.bashrc` file:

```bash
export PATH="$(brew --prefix python)/libexec/bin:${PATH}"
```

* Restart terminal

### Validate installation

```bash
which python python3 pip pip3
python --version
python3 --version
pip --version
pip3 --version
```

## VSCode Integration

* Open VSCode
* Go to Extensions
* Search for "Python"
* Choose "Python" extension by Microsoft