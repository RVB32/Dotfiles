echo "\033[0;34mSetting up basic zsh shell\033[0m"



echo "\033[0;34mcopying zshrc file to home directory\033[0m"
cp ~/Dotfiles/.zshrc ~/.zshrc

echo "\033[0;34mcopying vimrc file to home directory\033[0m"
cp ~/Dotfiles/.vimrc ~/.vimrc

echo "\033[0;34mcopying aliases file to home directory\033[0m"
cp ~/Dotfiles/.aliases ~/.aliases

echo "\033[0;34mCopying your current PATH and adding it to the end of ~/.zshrc for you.\033[0m"
echo "export PATH=\$PATH:$PATH" >> ~/.zshrc

echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
chsh -s `which zsh`

/usr/bin/env zsh
source ~/.zshrc
