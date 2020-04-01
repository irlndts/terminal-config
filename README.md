# terminal-config
configure files for bash, vim etc

steps:
```
brew install vim --with-python3

brew install thefuck

cp .vimrc ~/.vimrc
cp .bash_profile ~/.bash_profile

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c ':PlugInstall' -c ':q' -c ':q'
```

remove all merged branches in git

`git branch --merged | grep -v \* | xargs git branch -D`
