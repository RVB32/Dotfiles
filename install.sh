echo "Setting up basic zsh shell"



echo "copying zshrc file to home directory"
cp ~/Dotfiles/.zshrc ~/.zshrc

echo "copying vimrc file to home directory"
cp ~/Dotfiles/.vimrc ~/.vimrc

echo "copying aliases file to home directory"
cp ~/Dotfiles/.aliases ~/.aliases

echo "\033[0;34mCopying your current PATH and adding it to the end of ~/.zshrc for you.\033[0m"
echo "export PATH=\$PATH:$PATH" >> ~/.zshrc

echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
chsh -s `which zsh`

/usr/bin/env zsh
source ~/.zshrc
