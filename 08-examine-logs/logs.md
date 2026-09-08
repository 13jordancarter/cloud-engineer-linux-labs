In this step, I was able to examine logs on the local machine the webserver is being hosted on. These logs were located in /var/log/nginx. I was able to refresh the webpage to generate traffic and view the logs. The main tool with this was the journalctl tool to view system and service logs. I was able to use tail to view real time logs and the last 20 lines. I was able to view nginx specific logs to find data on that service. I also queried the sshd service to find data on ssh attempts to my server. The business impact on this is being able examine the traffic that is coming into your web facing server.

Commands used:

Access logs in real-time: sudo tail -f /var/log/nginx/access.log

Access the last 20 lines of error log: sudo tail -20 /var/log/nginx/error.log

View all system logs: journalctl

View last 50 lines of system logs: journalctl -n 50

Nginx logs via journalctl: journalctl -u nginx

Check services status and recent logs in one command: systemctl status nginx

All SSh logs: journalctl -u sshd

Failed login attempts only: journalctl -u sshd | grep "Failed password"

Last hour of SSH activity: journalctl -u sshd --since -1h

How many failed attempts in the last 24 hours: journalctl -u sshd --since -24h | grep -c "Failed"
