B) Network problem. In this step, I am investigating why my Nginx web server is not serving its normal information. When accessing the website over the browser, I get a "site took too long to respond" error.

My first troubleshooting step was to verify my web server was running. I pinged the web server public IP from my local machine. I got return results, so I can determine my server is alive and has network connectivity.

The next step was to determine if the configuration on the machine was correct. I was able to SSH into my web server to gather more information about the local machine. I checked on local firewall rules that would prevent this with the firewall-cmd command. I found that there was no local firewall, so nothing on the actual machine should be blocking this traffic. I then checked the ngix sever with the systemctl status command, and that showed my nginx service running, so the information should be able to be served over the web browser.

With knowing that my web server does not have a local firewall, I had to look into the AWS network security settings to determine if something was blocking it at that level. I worked my way in by checking the subnet NACL that this machine is in. The NACL shows that the only rule is set to allow all traffic in from anywhere, so that would not prevent this. I then went to the security group that this ec2 machine was attached to. I found that inbound rules only had rules for ICMP and SSH traffic. Without having HTTP/S traffic, any web browser would not be able to access the website.

I then added HTTP and HTTPS rules on the inbound rules for that security group. I went back to my web browser where the website was trying to be accessed and refreshed. This then allowed my website to be viewed as intended.
