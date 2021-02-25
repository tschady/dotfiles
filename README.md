# Dotfile management

## Overview

This project enables the easy installation of VCS tracked UNIX dotfiles.
Repo sits in user's home directory, and [GNU Stow](http://www.gnu.org/software/stow/) is
used to symlink files into their correct locations.
A side benefit is the ability to "deploy" dotfiles to a new machine on a tool-by-tool basis.

## Installation
(If not using Homebrew, skip the `brew` step and install via other methods)

    $ brew install stow
    $ cd ~/
	$ git clone https://github.com/tschady/dotfiles.git
	$ cd dotfiles
	$ git submodule init
	$ git submodule update
	$ stow -t $HOME zsh emacs git

Etc.

## Sample directory structure

    ~/dotfiles
	          /emacs
					/.emacs
			        /.emacs.d
					         [... many other files... ]
			  /zsh
					/.zlogin
					/.zshrc
					[... many other files... ]

## TODO

* remove dependency on Stow
