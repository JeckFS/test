#!/usr/bin/expect
proc upload_github {path} {
	puts $path
	exec git add . 
	exec git commit -m "test"
	exec git push -u origin master
}
upload_github /home/yfs/jupyter-dir/notebook
