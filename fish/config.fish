#!/usr/bin/env fish

source /home/impsid/.asdf/asdf.fish
direnv hook fish | source

fzf_configure_bindings --git_log=\e\cg

__update_wt_current_path
