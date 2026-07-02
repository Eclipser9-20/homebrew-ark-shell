# homebrew-ark

A [Homebrew](https://brew.sh) tap for **[ark](https://github.com/Eclipser9-20/Ark-shell)** — a from-scratch interactive shell written in C++20.

## Install

```sh
brew install eclipser9-20/ark/ark-shell
```

Or tap first, then install:

```sh
brew tap eclipser9-20/ark
brew install ark-shell
```

Build the latest development version instead of the newest release:

```sh
brew install --HEAD eclipser9-20/ark/ark-shell
```

## Use ark as your login shell

```sh
echo "$(brew --prefix)/bin/ark" | sudo tee -a /etc/shells
chsh -s "$(brew --prefix)/bin/ark"
```
