A) Website down. In this step, I am investigating why my Nginx web server is not serving its normal information. When accessing the website over the browser, I get a "site can not be reached" error.

My first troubleshooting step was to verify my local machine could reach my server. I pinged the public IP and did not get any replies back. I verified that ICMP traffic was allowed in on my web server. I found that it was not, so I add a rule to my inbound security group that allowed ICMP traffic from my local IP only. I then tested again and got return results. This shows that my web server is on and has network connection.

I then connected to my EC2 server over the AWS connect tool. With the ec2 machine running, I checked in on the basic web server management tool nginx. I ran the systemctl command to verify the status of the nginx service. The active state was showing as inactive.

The next step was to check the logs to see what may have happened. For this I used the journalctl command to find all information on the nginx service. I ran journalctl -u nginx to see those log items. I found that the service had been stopped at some point in the past. To gather more information on who stopped this, I ran the journalctl | grep "sudo.*stop" command to see what user stopped this.

I then ran then systemctl start command to have that service running. Going back to my webpage and refreshing, this now shows my basic web server as live.
