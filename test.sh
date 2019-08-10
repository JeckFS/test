#!/usr/bin/expect
proc upload_github {path} {
	puts $path
	exec git add . 
	exec git commit -m "test"
	exec git push origin master

	expect "Username for 'https://github.com':"
	send JeckFS

}
upload_github /home/yfs/jupyter-dir/notebook
