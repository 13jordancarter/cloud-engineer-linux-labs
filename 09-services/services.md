For this step, I was able to use the systemctl command to check and modify the nginx service. I was able to check the status, stop, start, restart the service. Also if the service starts automatically after a reboot. The business impact on these commands is being able to check and modify what is running on your server at a given time and ensure application availability.

Commands used:

Check service status: sudo systemctl status nginx
Stop service: sudo systemctl stop nginx
Start service: sudo systemctl start nginx
Restart a service: sudo sysemctl restart nginx
Determine automatic start on reboot: systemctl is-enabled nginx
