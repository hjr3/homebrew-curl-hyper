set positional-arguments

symlink:
  ln -s $(pwd) /usr/local/Homebrew/Library/Taps/hjr3/homebrew-curl-hyper

@install formula:
  HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source --verbose --debug hjr3/curl-hyper/$1

@reinstall formula:
  HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source --verbose --debug hjr3/curl-hyper/$1

@uninstall formula:
  brew uninstall hjr3/curl-hyper/$1

unlink:
  rm -fr /usr/local/Homebrew/Library/Taps/hjr3/homebrew-curl-hyper
