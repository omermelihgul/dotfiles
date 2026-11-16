# dotfiles

Personal dotfiles, managed with [chezmoi](https://www.chezmoi.io/).

![Last Commit](https://img.shields.io/github/last-commit/omermelihgul/dotfiles)
![Code Size](https://img.shields.io/github/languages/code-size/omermelihgul/dotfiles)
[![License](https://img.shields.io/github/license/omermelihgul/dotfiles)](LICENSE)

## Connecting to GitHub with SSH

Refer to GitHub's documentation to [generate a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and [add it to your account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

## New Machine Setup

Complete the OS-specific prerequisites first, then follow the common steps.

**macOS**

Install the Xcode Command Line Tools:

```bash
xcode-select --install
```

**Ubuntu**

Install base dependencies, then set zsh as the default shell:

```bash
sudo apt-get update
sudo apt-get install -y build-essential procps curl file git zsh
chsh -s "$(which zsh)"
```

**Common Steps**

1. Install [Homebrew](https://brew.sh/):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install [chezmoi](https://www.chezmoi.io/install/):

```bash
brew install chezmoi
```

3. Initialize and apply the dotfiles. Packages listed in [`~/.brewfile`](home/dot_brewfile) are installed on both macOS and Ubuntu by the [`install-packages.sh`](home/.chezmoiscripts/run_onchange_install-packages.sh) script, including the zsh plugins:

```bash
chezmoi init --apply --ssh omermelihgul
```

## Acknowledgements

Powered by [chezmoi](https://www.chezmoi.io/) by [Tom Payne](https://github.com/twpayne) and its [contributors](https://github.com/twpayne/chezmoi/graphs/contributors).
