#!/usr/bin/expect
proc upload_github {path} {
	puts $path
	exec git add . 
	exec git commit -m "test"
	spawn git push origin master

	expect "Username for"
	send JeckFS
	expect "Password for"
	send 12236.yfs

}
upload_github /home/yfs/jupyter-dir/notebook
