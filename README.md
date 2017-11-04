# akarzim.vim configuration (config branch) based on sunaku.vim

Unlike most Vim configurations you find on the Internet, this one is modular:
*not* a single giant `vimrc` file!  May it help you journey the lands of Vim.

## Overview

Branches

* The **master** branch is a bare bones template for anyone to start with.

* The **config** branch adds my personal configuration of standard Vim.

Configuration

* `config.vim` activates your bundles and then loads your Vim configuration.

* `config/**/*.vim` is your Vim configuration, organized into files by topic.

* `config/color/*.vim` are configurations for the matching Vim color schemes.

## Prerequisites

* [Vim](http://www.vim.org/) 7.3 or newer

* [Git](http://git-scm.com/) 1.5 or newer

* [vim-plug](https://github.com/junegunn/vim-plug) plugin manager

## Installing

### Backup your configuration

For Vim:

```sh
mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak
```

For NeoVim:

```sh
mv ~/.nvim ~/.nvim.bak
mv ~/.nvimrc ~/.nvimrc.bak
mv ~/.config/nvim ~/.config/nvim.bak
```

### Install this configuration

```sh
git clone git://github.com/akarzim/.vim.git ~/git/vim
```

For Vim:

```sh
ln -s ~/git/vim/ ~/.vim
ln -s ~/git/vim/config.vim ~/.vimrc
```

For NeoVim:

```sh
ln -s ~/git/vim ~/.config/nvim
ln -s ~/git/vim/config.vim ~/.nvimrc    
```

### Select a Git branch to use

```sh
cd ~/.vim
git checkout master  # bare bones
git checkout config  # bare bones + my config
```

### Install plugins straight form Vim

```sh
vi +PlugUpdate +qa
```

## Bundling

Read the doc of [vim-plug](https://github.com/junegunn/vim-plug/blob/master/README.md) to learn how to manage plugins

Do all this periodically via crontab(1):

```
@daily vi +PlugUpgrade +PlugUpdate +qa
```
