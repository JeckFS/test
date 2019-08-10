#!/usr/bin/expect
proc upload_github {path} {
	set timeout 15 
	exec git add .
	exec git commit -m "test"
	spawn git push origin master

	expect "Username for"
	send JeckFS\n
	expect "Password for"
	send "12236.yfs"
	send \n
	interact
	
}
upload_github /home/yfs/mytest/t
