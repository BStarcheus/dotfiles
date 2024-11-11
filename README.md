# dotfiles
Brandon's dotfiles for macOS

- zsh with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Spaceship prompt](https://github.com/denysdovhan/spaceship-prompt)
- Spaceship prompt holiday color schemes
- Vim custom color scheme and hybrid line numbering

## Prerequisites
Before bootstrapping be sure to:
```sh
$ xcode-select --install
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Run
```sh
# After clone
$ mv dotfiles .dotfiles
$ cd .dotfiles
$ ./bootstrap.sh
$ ./brew.sh
$ ./settings.sh
```