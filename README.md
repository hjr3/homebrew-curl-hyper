# Homebrew curl-hyper

## Installation

`brew install hjr3/curl-hyper/curl`

Or `brew tap hjr3/curl-hyper` and then `brew install <formula>`.

### Alias
You probably have curl already installed in `/usr/bin/curl`. You can alias this version of curl:

`alias curl="$(brew --prefix hjr3/curl-hyper/curl)/bin/curl"`

## Formulas

This has two formulas:

- libhyper - Hyper's FFI bindings
- curl - the core curl formula with a small patch to use `-lhyper`

## Development

Run `just symlink` to symlink this repository (assumed to be the current directory) to the tap

Run `just unlink` to remove the `hjr3/homebrew-curl-hyper` tap
