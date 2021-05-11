# fossil2git
scripts to convert fossil repo to git repo

# examples
<pre>
<b>[jh@fstest fossil2git]$ ls</b>
LICENSE  README.md  fossil-sync-changes-to-git.sh  fossil-to-new-git.sh
<b>[jh@fstest fossil2git]$ ./fossil-to-new-git.sh https://wapp.tcl.tk wapp trunk</b>
redirect with status 301 to https://wapp.tcl.tk/home
Round-trips: 2   Artifacts sent: 0  received: 572
Clone done, sent: 744  received: 2919362  ip: 45.33.6.223
Rebuilding repository meta-data...
  100.0% complete...
Extra delta compression... 
Vacuuming the database... 
project-id: 757584abeea18a0763e4dd55c59b974d531baee7
server-id:  55f286bb1cfe43918dbbb55ea6e542ec1141d247
admin-user: jh (password is "o5WCAUNDFi")
Makefile
Makefile.macos
README.md
...
Switched to branch 'trunk'
<b>[jh@fstest fossil2git]$ ls</b>
LICENSE  README.md  fossil-sync-changes-to-git.sh  fossil-to-new-git.sh  🍊wapp.db  wapp.fossil  wapp.git🍊
</pre>

# ref
https://fossil-scm.org/home/doc/trunk/www/inout.wiki  
https://fossil-scm.org/home/doc/trunk/www/mirrortogithub.md  
