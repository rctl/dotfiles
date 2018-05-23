cp ~/.bash_profile ~/bash_profile.backup
cp .bash_profile ~/.bash_profile
cp -r scripts/ ~/scripts
echo "Your .bash_profile was backed up to ~/bash_profile.backup :)"
echo "Installing dependencies"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install minio/stable/mc
curl https://sdk.cloud.google.com | bash
brew install doctl
brew install kubectl
brew install ghi
echo "Dependencies installed"