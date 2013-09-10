echo "\033[0;34mSetting up basic Dot Files\033[0m"

echo "\033[0;34mLooking for existing DotFiles...\033[0m"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "\033[0;33mFound ~/.zshrc.\033[0m \033[0;32mBacking up to ~/.BackUpzshrc\033[0m";
  mv ~/.zshrc ~/.BackUpzshrc;
elif [ -f ~/.vimrc ] || [ -h ~/.vimrc ]
then
  echo "\033[0;33mFound ~/.vimrc.\033[0m \033[0;32mBacking up to ~/.BackUpvimrc\033[0m";
  mv ~/.zshrc ~/.BackUpvimrc;
elif [ -f ~/.gitconfig ] || [ -h ~/.gitconfig ]
then
  echo "\033[0;33mFound ~/.gitconfig.\033[0m \033[0;32mBacking up to ~/.BackUpgitconfig\033[0m";
  mv ~/.zshrc ~/.BackUpgitconfig;
elif [ -f ~/.aliases ] || [ -h ~/.aliases ]
then
  echo "\033[0;33mFound ~/.aliases.\033[0m \033[0;32mBacking up to ~/.BackUpaliases\033[0m";
  mv ~/.zshrc ~/.BackUpaliases;

echo "\033[0;34mDone Copying DotFiles\033[0m"

echo "\033[0;34mcopying zshrc file to home directory\033[0m"
cp ~/Dotfiles/.zshrc ~/.zshrc

echo "\033[0;34mcopying vimrc file to home directory\033[0m"
cp ~/Dotfiles/.vimrc ~/.vimrc

echo "\033[0;34mcopying aliases file to home directory\033[0m"
cp ~/Dotfiles/.aliases ~/.aliases

echo "\033[0;34mcopying zshrc file to home directory\033[0m"
cp ~/Dotfiles/.gitconfig ~/.gitconfig

echo "\033[0;34mCopying your current PATH and adding it to the end of ~/.zshrc for you.\033[0m"
echo "export PATH=\$PATH:$PATH" >> ~/.zshrc

echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
chsh -s `which zsh`

/usr/bin/env zsh
source ~/.zshrc
