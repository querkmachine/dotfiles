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
- [git-delta](https://github.com/dandavison/delta), nicer git diffs, goes well with bat
- [powerlevel10k](https://github.com/romkatv/powerlevel10k), my preferred zsh theme
- [stow](https://www.gnu.org/software/stow/), a symlinker tool
- [zoxide](https://github.com/ajeetdsouza/zoxide), it's `cd` with loose matching

```sh
brew install bat git-delta powerlevel10k stow zoxide
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

## Other stuff

### More Homebrewing

There are other Homebrew utilities I tend to have installed but which aren't required for getting started on a new computer. These are here just so I have an easy reference for them.

- [yt-dlp](https://github.com/yt-dlp/yt-dlp), for downloading video
- [ffmpeg](https://ffmpeg.org/), for video and audio conversion
- [imagemagick](https://imagemagick.org/), for image conversion
- [gitmoji](https://github.com/carloscuesta/gitmoji-cli), for annotating git commits with ✨fun✨
- [nvm](https://github.com/nvm-sh/nvm), for managing Node versions
- [pyenv](https://github.com/pyenv/pyenv), for managing Python versions

```sh
brew install yt-dlp ffmpeg imagemagick gitmoji nvm pyenv
```

Casks are more akin to full desktop applications rather than command line programs, and need to be installed slightly differently. This command installs:

- [1Password](https://1password.com/)
- [Raycast](https://raycast.com/)
- [Karabiner-Elements](https://karabiner-elements.pqrs.org/)
- [Arc](https://arc.net/)
- [Firefox](https://www.mozilla.org/firefox/)
- [Chrome](https://www.google.com/chrome/)
- [Edge](https://www.microsoft.com/en-us/edge)
- [Discord](https://discord.com/)
- [Telegram](https://macos.telegram.org/) (macOS version)
- [Nova](https://nova.app)
- [Sublime Text](https://www.sublimetext.com/)

```sh
brew install --cask 1password raycast karabiner-elements arc firefox google-chrome microsoft-edge discord telegram nova sublime-text
```
