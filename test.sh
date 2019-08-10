#!/usr/bin/expect
proc upload_github {path} {
	puts $path
	exec git add . 
	exec git commit -m "test"
	spawn git push origin master

	expect "Username for"
	puts "ok1"
	send JeckFS
	puts "ok2"

}
upload_github /home/yfs/jupyter-dir/notebook
