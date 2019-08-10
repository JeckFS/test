#!/usr/bin/expect
proc upload_github {path} {
	puts $path
	set timeout 3
	exec git add . 
	exec git commit -m "test"
	spawn git push origin master

	expect "Username for"
	send JeckFS\n
	expect "Password for"
	send 12236.yfs\n

}
upload_github /home/yfs/jupyter-dir/notebook
