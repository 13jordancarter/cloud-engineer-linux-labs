 For this step, I was able to create a new directory tree of opt/cloudproject. I then created a text file and markdown file inside the path. I configured that path group ownership to be of the cloudengineer group. I also was able to make the group permissions of the path to be RWX, and leave the unrelated users to have no access to the path files. During this, I also was able to set the new files to inherit the group permissions automatically. These items simulate business impact of ensuring users/groups have correct permissions and tasks related to least privilege.

Commands user:

Make Directory: mkdir cloudproject
Make file : touch file1.txt
Change group ownership: sudo chgrp -R cloudengineer /cloudproject
Setgid: sudo chmod -R g+s /cloudproject
Set correct permissions: sudo chmod -R 770 /cloudproject
Verify permissions: ls -ld /cloudproject
