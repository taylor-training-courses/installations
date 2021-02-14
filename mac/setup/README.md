# README for Macs

## Big Sur / Zsh

```
# Install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# install Oh My Zsh (https://ohmyz.sh/)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Recommended ZSH Themes:

* afowler
* apple
* amuse
* awesomepanda
* robbyrussell (default)
* simple

## Homebrew

Go to https://brew.sh/, follow install instructions

### Install Git via Homebrew

```
brew install git git-gui
```

Edit the .zshrc file, append to end:

```
export PATH="/opt/homebrew/opt/git/bin:$PATH" # for M1 Macs only
```
