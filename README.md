# Homebrew curl-hyper

## Installation

`brew install hjr3/curl-hyper/curl-hyper`

Or `brew tap hjr3/curl-hyper` and then `brew install curl-hyper`.

### Alias
You probably have curl already installed in `/usr/bin/curl`. You can alias this version of curl:

`alias curl="$(brew --prefix hjr3/curl-hyper/curl-hyper)/bin/curl"`

## Formulas

This has two formulas:

- libhyper - Hyper's FFI bindings
- curl - the core curl formula with a small patch to use `-lhyper`

## Development

### Setup

Run `just symlink` to symlink this repository (assumed to be the current directory) to the tap

### Run Formula Locally

Run `just install` to install the formual if it does not already exist

Run `just reinstall` to overwrite the existing formula

### Teardown

Run `just uninstall` to remove `hjr3/curl-hyper/curl-hyper`

Run `just unlink` to remove the `hjr3/homebrew-curl-hyper` tap

You can also run `just teardown` to do both of these steps.
