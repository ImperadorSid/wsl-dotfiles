#!/usr/bin/env fish

./variables.fish
./aliases.fish

./asdf_plugins.fish

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
fzf_configure_bindings --git_log=\e\cg

cp -r fish/ ~/.config
cp -r git/ ~/.config
cp -r direnv/ ~/.config
