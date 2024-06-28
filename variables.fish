#!/usr/bin/env fish

read -USP 'Files directory: ' files_dir
read -US -c "$files_dir" -P 'Data disk location: ' data_disk_linux_path

set files_dir (string trim $files_dir)
set data_disk_linux_path (string trim $data_disk_linux_path)

set data_disk_file_name (string split -rm 1 '.' (basename $data_disk_linux_path))

read -U -c "$data_disk_file_name[1]" -P 'Data disk mount name: ' data_disk_mount_name

set -U doc_dir $files_dir/Documents/
set -U down_dir $files_dir/Downloads/
set -U work_dir /mnt/wsl/$data_disk_mount_name

set -Ux EDITOR nvim

set -U fzf_git_log_format '%C(bold blue)%h%C(reset) %C(cyan)%ah%C(reset)%C(yellow)%d%C(reset) %C(normal)%s%C(reset)'
