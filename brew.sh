#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

brew install adns
brew install autoconf
brew install autopano-sift-c
brew install cocoapods
brew install dark-mode
brew install exif
brew install exiftool
brew install freetype
brew install gcc
brew install gdbm
brew install gettext
brew install gmp
brew install gnutls
brew install gpg-agent
brew install grunt-cli
brew install htop
brew install httpstat
brew install icu4c
brew install ilmbase
brew install isl
brew install jasper
brew install jpeg
brew install jq
brew install ldns
brew install libassuan
brew install libde265
brew install libdnet
brew install libevent
brew install libexif
brew install libffi
brew install libgcrypt
brew install libgpg-error
brew install libheif
brew install libidn2
brew install libksba
brew install libmpc
brew install libomp
brew install libpano
brew install libpng
brew install libtasn1
brew install libtiff
brew install libtool
brew install libunistring
brew install libusb
brew install libxml2
brew install libyaml
brew install little-cms2
brew install mpfr
brew install narwhal
brew install ncurses
brew install nettle
brew install node
brew install npth
brew install oniguruma
brew install openexr
brew install openjpeg
brew install openssl
brew install openssl@1.1
brew install p11-kit
brew install pcre
brew install pcre2
brew install pdfcrack
brew install perl
brew install pinentry
brew install pinentry-mac
brew install pipenv
brew install pkg-config
brew install popt
brew install pth
brew install pyenv
brew install python
brew install readline
brew install rhino
brew install ringojs
brew install ruby
brew install s3cmd
brew install speedtest-cli
brew install sqlite
brew install ssdeep
brew install terraform
brew install testssl
brew install unbound
brew install unixodbc
brew install unrar
brew install vault
brew install watchman
brew install webkit2png
brew install webp
brew install x265
brew install yarn
brew install youtube-dl

# Remove outdated versions from the cellar.
brew cleanup

brew cask install adobe-acrobat-reader
brew cask install atom
brew cask install charles
brew cask install disk-inventory-x
brew cask install docker
brew cask install dropbox
brew cask install google-chrome
brew cask install grammarly
brew cask install graphiql
brew cask install java
brew cask install keybase
brew cask install libreoffice
brew cask install meld
brew cask install ngrok
brew cask install opera
brew cask install postman
brew cask install skype
brew cask install slack
brew cask install sourcetree
brew cask install sqlectron
brew cask install sublime-text
brew cask install tower
brew cask install vlc
brew cask install zeplin
