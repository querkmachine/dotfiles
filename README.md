# dotfiles

My dotfiles. Aka, my preferred configuration for things on my Macs.

That doesn't mean I use identical configs everywhere (differentiation can be nice!) but most all of these things are kept the same for smooth operation.

## Using the dotfiles (and other terminal things I like)

### Install Homebrew

Having [Homebrew](https://brew.sh/) will make your life a lot easier going forward.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install zsh

zshell is now default with macOS and this step is probably skippable for future me, but just in case it's not around for some reason:

```sh
brew install zsh
```

### Install basically everything through Homebrew

Installs:

- [bat](https://github.com/sharkdp/bat), a cooler version of `cat`
- [powerlevel10k](https://github.com/romkatv/powerlevel10k), my preferred zsh theme
- [GNU Stow](https://www.gnu.org/software/stow/), a symlinker tool
- [zoxide](https://github.com/ajeetdsouza/zoxide), it's `cd` with loose matching

```sh
brew install bat powerlevel10k stow zoxide
```

### Clone this repo into the home directory

```sh
git clone git@github.com:querkmachine/dotfiles.git ~/dotfiles
```

### Run Stow

```sh
cd ~/dotfiles
stow .
```

## Setting up a new Mac

Why trawl through menus of stuff when you can do stuff with terminal commands?

### Grant the terminal full disk access

macOS has an extra layer of security when touching parts of the OS that even `sudo` cannot overcome.

To overcome them, go to System Settings → Privacy → Full Disk Access and grant whatever terminal application is being used that permission. The terminal will need to be restarted.

### Run the script

```sh
cd ~/dotfiles
sh macos-config.sh
```

There might be a few warnings and maybe a few errors (it's not uncommon for these commands to change between macOS versions) but the script should keep running regardless. 
