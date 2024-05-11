symlink:
  ln -s $(pwd) /usr/local/Homebrew/Library/Taps/hjr3/homebrew-curl-hyper

install:
  HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source --verbose --debug hjr3/curl-hyper/curl-hyper

reinstall:
  HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source --verbose --debug hjr3/curl-hyper/curl-hyper

uninstall:
  brew uninstall hjr3/curl-hyper/curl-hyper

unlink:
  rm -fr /usr/local/Homebrew/Library/Taps/hjr3/homebrew-curl-hyper

teardown: uninstall unlink
