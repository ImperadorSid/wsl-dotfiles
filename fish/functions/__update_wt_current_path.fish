#!/usr/bin/env fish

function __update_wt_current_path -v PWD
  if test -n "$WT_SESSION"
    printf "\e]9;9;%s\e\\" (wslpath -w "$PWD")
  end
end
