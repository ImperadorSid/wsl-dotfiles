#!/usr/bin/env fish

sudo apt install -y python3-tk sqlite3 {zlib1g,tk,lib{ffi,ssl,sqlite3,readline,bz2,yaml,pq,lzma,xml2}}-dev

asdf plugin-add python
asdf plugin-add nodejs
asdf plugin-add yarn
asdf plugin-add ruby
asdf plugin-add rust
asdf plugin-add direnv

asdf install python latest
asdf install nodejs latest
asdf install yarn latest
asdf install ruby latest
asdf install rust stable
asdf install direnv latest

asdf global python latest
asdf global nodejs latest
asdf global yarn latest
asdf global ruby latest
asdf global rust stable
asdf global direnv latest

source /home/impsid/.asdf/asdf.fish

pip install --upgrade pip
pip install wheel

gem update --system
gem update
gem install solargraph

cargo install ripgrep fd-find bat eza dua-cli

asdf reshim
