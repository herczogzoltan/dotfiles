# dotfiles

Collection of my system configuration files.


## Tribute

The structure highly depends on [Zach Holman](https://github.com/holman)'s [dotfiles](https://github.com/holman/dotfiles/tree/7b8b643640e636d499fc4eaaf4de57d5bd8c2261) repository structure. Thanks for this awesome project.


## Bootstrap

Run `script/bootstrap` to use the configuration provided in this repository.

In the background it will create a symlink to your `$HOME`.


## Install

Run `script/install` to run every `install.sh` provided in the subdirectories.


## How to use


### Custom environment variables

To add system-specific environment variables, create `$HOME/.localrc`, the symlink file (`zsh/zshrc.symlink`) will load it for you.

It may not be obvious but if you use credentials in environment variables, for security reasons they shouldn't be part of the repository. You can use `$HOME/.localrc` to store them.


### Add custom configuration

Use `$HOME/.local.zsh` to define your own functions, configuration and etc., the symlink file (`zsh/zshrc.symlink`) will load it for you.

Extra configuration that you didn't want to be part of the repository either temporarily or permanently, you can use `$HOME/.local.zsh`. In an ideal world we all have the time to make things final, until then, you can use this file to add your in-place changes.


## How to extend


### Add new config set
Files in any subdirectory in the repository root that ends with .zsh will be loaded. Create a new config set and place a file end with `.zsh` to be used.


### Add new dependencies
Put a file named `install.sh` in any subdirectory to be run by the installer script `script/install`.
