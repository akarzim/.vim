# sunaku.vim bootstrap (master branch)

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

Backup your configuration:

    mv ~/.vim ~/.vim.bak
    mv ~/.vimrc ~/.vimrc.bak

Install this configuration:

    git clone git://github.com/sunaku/.vim.git ~/.vim
    ln -s ~/.vim/config.vim ~/.vimrc

Select a Git branch to use:

    cd ~/.vim
    git checkout master  # bare bones
    git checkout config  # bare bones + my config

Install plugins straight form Vim:

    vi +PlugUpdate +qa

## Bundling

Read the doc of [vim-plug](https://github.com/junegunn/vim-plug/blob/master/README.md) to learn how to manage plugins

Do all this periodically via crontab(1):

    @daily vi +PlugUpgrade +PlugUpdate +qa

