I then was able to SSH into my ec2 server. I had to enable port 22 from 0.0.0.0/0 on the security group my instance was attached to remote in with AWS Connect. I then removed the SSH from anywhere rule in my security group for security reasons, only allowing SSH from my local IP.

I then was able to determine specs about the server from the command line such as:

Private IP - ifconfig

Public IP - curl ifconfig.me

Linux Distro-Version - cat /etc/os-release

Current Directory - pwd

Disk Space - df -h

Memory - free -h

CPU information - lscpu
