In this step, I was able to transfer files to and from my local machine and ec2 server using the scp command. First I was able to create and transfer a file from my local machine to the ec2 server. I then was able to transfer a file from my ec2 server back to my local machine. Both of the of the processes were run from my local machine terminal. The business impact on this is being able to securely transfer files to and from my machines.

Commands used:

scp -i localkey.pem SourceFileLocation ec2user@EC2IPADDRESS:DestinationFileLocation
