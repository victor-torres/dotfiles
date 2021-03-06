brew update

brew install lastpass-cli --with-pinentry
brew install reattach-to-user-namespace
brew install ledger
brew install rsync
brew install tmux
brew install tmate
brew install watch

brew cask install p4merge

wget https://github.com/vmchale/command-line-tweeter/releases/download/1.0.1.32/tweet-x86_64-apple-darwin -O /usr/local/bin/command-line-tweeter
sudo chmod +x /usr/local/bin/command-line-tweeter

ln -sf /Applications/p4merge.app/Contents/Resources/launchp4merge /usr/local/bin/p4merge
chmod +x /usr/local/bin/p4merge
