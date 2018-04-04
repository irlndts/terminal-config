# terminal-config
configure files for bash, vim etc

steps:
```
ln -s .vimrc ~/.vimrc
ln -s .bash_profile ~/.bash_profile

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c ':PlugInstall' -c ':q' -c ':q'
```
