#!/usr/bin/env fish

set disk_path (wslpath -w $data_disk_linux_path)

function __mount_work_disk
	powershell.exe wsl --mount --vhd $disk_path --name $data_disk_mount_name --partition '1'
end

function __unmount_work_disk
	powershell.exe wsl --unmount "\\\\?\\$disk_path"
end

function work_disk
	if test "$argv" = "--unmount"
		__unmount_work_disk
		return
	end

	__mount_work_disk

	if test "$status" -ne 0
		__unmount_work_disk
		__mount_work_disk
	end

	lsblk
end
