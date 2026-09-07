In this step, I was able to use nginx to run a basic HTML webpage displaying text information. I was able to locate the nginx index.html file and edit that basic text to display the Tennessee Titans are my favorite football team. I then had to see the correct permissions for nginx users and the file to be able to display. I concluded with restarting the nginx service and verifying it was running. After, I had to edit my ec2 security group to allow inbound traffic on port 80/443 from my local IP to be able to access that over the public internet. The business impact on this is properly formatting a webpage to serve information and ensuring only certain network traffic is allowed in for security reasons.

Commands used:

Edit the index.html file: sudo vi /usr/share/nginx/html/index.html
Set ownership  of file: sudo chown -R root:nginx /usr/share/nginx/html
Set permissions of file: sudo chmod -R 755 /usr/share/nginx/html
Restart nginx: sudo systemctl restart nginx
Enable nginx: sudo systemctl enable nginx
Verify nginx is running: sudo systemctl status nginx
