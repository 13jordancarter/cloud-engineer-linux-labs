For this step, I was able to utilize process tools to gather information on nginx running, the resources it is using, and processes running. The business impact on this is having an understanding on what is running on your machine due to a service being hosted on it.

Commands used:

Verify nginx is running: sudo systemctl status nginx

What the PID is: sudo systemctl status nginx

Uptime: sudo systemctl status nginx

See all processes and their users: ps aux | grep nginx

How much CPU/Memory is being used: sudo systemctl status nginx

What other processes are running: ps aux

Real time view of processes: top

Process tree: pstree -p

Processes by Nginx: pgrep -a nginx
