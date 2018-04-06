# terminal-config
configure files for bash, vim etc

steps:
```
brew install vim --with-python3

cp .vimrc ~/.vimrc
cp .bash_profile ~/.bash_profile

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c ':PlugInstall' -c ':q' -c ':q'
```
