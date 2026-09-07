# Cloud Engineer — Linux & AWS Administration Lab

Hands-on cloud engineering lab focused on Linux system administration, AWS infrastructure, command-line operations, Bash automation, and troubleshooting.

The goal of this project was to build and administer a real Linux server in AWS rather than simply work through theoretical exercises. I deployed an Amazon Linux 2023 EC2 instance, accessed and managed it remotely over SSH, configured users and permissions, deployed a web service, worked with system processes and logs, used the AWS CLI to interact with AWS resources, and intentionally introduced failures to practice diagnosing and resolving infrastructure issues.

Project Overview

Environment: AWS
Operating System: Amazon Linux 2023
Compute: Amazon EC2
Web Server: nginx
Automation: Bash
AWS Management: AWS CLI
Version Control: Git / GitHub

Key Areas Covered
Linux server administration
AWS EC2 deployment and configuration
SSH remote administration
Linux users and groups
File ownership and permissions
Package management
nginx installation and configuration
Linux processes and services
System and application logs
AWS Security Groups
AWS CLI
Amazon S3
Bash scripting
File transfers with SCP
Infrastructure troubleshooting
Git-based documentation
Architecture

The lab was built around a simple AWS environment where I could administer a Linux server remotely and troubleshoot issues across multiple layers.

                    Internet
                       │
                       ▼
                 AWS Security Group
                  │             │
                SSH :22       HTTP :80
                  │             │
                  └──────┬──────┘
                         ▼
                 Amazon EC2
              Amazon Linux 2023
                         │
              ┌──────────┴──────────┐
              │                     │
           nginx                 Linux OS
              │                     │
              ▼              Users / Groups
         HTML Website        Permissions / Logs
                                    │
                                    ▼
                              Bash Automation


Local Workstation
      │
      ├── SSH / SCP ──────────────► EC2
      │
      ├── AWS CLI ────────────────► AWS APIs
      │
      └── Git ────────────────────► GitHub
      
What I Built
1. AWS EC2 Linux Server

Deployed an Amazon Linux 2023 EC2 instance to serve as the administration and troubleshooting environment.

The instance was configured with:

SSH key authentication
Public connectivity
Security Group rules
SSH access restricted to my IP address
HTTP access for the web server

This provided a practical environment for connecting AWS infrastructure concepts with Linux system administration.

2. Remote Linux Administration

Connected to the EC2 instance remotely using SSH and performed administration entirely from the command line.

I practiced investigating the server to determine:

Current user
Hostname
Private IP address
Public IP address
Linux distribution and version
Current working directory
Disk utilization
Memory usage
CPU information

The focus was on becoming comfortable investigating an unfamiliar Linux server before making changes.

3. Linux Users, Groups & Permissions

Created Linux users and groups to simulate basic access management for a small engineering team.

Example:

Group: cloudengineers

Users:
- engineer1
- engineer2

Configured group membership and practiced verifying account access and permissions.

I also created a shared project directory and worked with:

File ownership
Group ownership
Read/write/execute permissions
chmod
chown
Permission verification with ls -l

The goal was to understand why a user can or cannot access a resource rather than relying on memorized permission values.

4. nginx Web Server

Installed and configured nginx on the EC2 instance and deployed a basic HTML page.

Cloud Engineer Lab

Server: AWS EC2
OS: Amazon Linux
Environment: Development

Configured AWS networking and Linux services so the page could be accessed through the EC2 public IP.

This connected multiple layers of the environment:

Browser
   ↓
Internet
   ↓
AWS Security Group
   ↓
EC2
   ↓
Linux
   ↓
nginx
   ↓
HTML
5. Processes & Service Management

Investigated running Linux processes and the nginx service using tools such as:

ps
top
pgrep
systemctl

Practiced determining:

Whether a service is running
Process IDs
Which user owns a process
CPU and memory usage
Service status
Starting and stopping services
Restarting services
Whether services start automatically after reboot

I also tested service availability from the client side by stopping nginx and verifying that the website became unavailable before restoring the service.

6. Logs & System Investigation

Used Linux logging tools to investigate system and application activity.

Tools included:

journalctl
tail
less
grep

Generated HTTP traffic against the nginx server and then examined the logs to identify the resulting requests.

I also explored system, service, and SSH-related logs to build familiarity with the information available when troubleshooting a Linux server.

7. AWS CLI

Used the AWS CLI from my local workstation to interact with AWS without relying exclusively on the management console.

Examples included:

aws sts get-caller-identity
aws s3 ls
aws ec2 describe-instances

Created an S3 workflow that allowed me to:

Create an S3 bucket
Upload a local file
List objects
Download an object
Delete an object

I also used the CLI to inspect EC2 information and better understand how command-line operations interact with AWS APIs.

AWS CLI credentials were kept on the workstation rather than permanently configured on the EC2 server.

8. Bash Automation

Created a simple Bash script to collect useful information from the Linux server.

Example output:

=== SERVER REPORT ===

Hostname:
ip-10-0-1-15

Current User:
ec2-user

Disk Usage:
...

Memory:
...

Running nginx:
Yes

Current Date:
...

The script provided hands-on practice with:

Bash
Variables
Linux commands
Command output
Conditional logic
Basic automation
Troubleshooting Exercises

A major part of this project was intentionally breaking working components and troubleshooting them without immediately following a tutorial.

nginx Outage

Stopped the nginx service and approached the problem as if the outage were unexpected.

Investigation path:

Can I reach the EC2 instance?
        ↓
Is the server running?
        ↓
Is nginx running?
        ↓
What do the service logs show?
        ↓
Identify the problem
        ↓
Restore service

This reinforced the importance of troubleshooting from the infrastructure layer upward rather than assuming the application is always the problem.

Security Group / Network Outage

Changed the HTTP Security Group configuration and investigated why the website was no longer reachable.

The objective was to determine whether the failure was related to:

AWS networking
Security Group configuration
EC2
Linux
nginx

This exercise helped reinforce the distinction between network connectivity problems and application/service problems.

Linux Permission Issue

Removed the appropriate group access from the project directory and attempted to modify files using a test account.

After receiving:

Permission denied

I investigated the directory ownership and permissions and restored the appropriate access.

This provided practical experience diagnosing Linux authorization issues instead of treating permissions as a purely theoretical topic.

Repository Structure
cloud-engineer-linux-labs/
│
├── README.md
│
├── linux/
│   ├── users-and-groups.md
│   ├── permissions.md
│   ├── services.md
│   └── logs.md
│
├── bash/
│   └── server-info.sh
│
├── aws-cli/
│   └── aws-cli-labs.md
│
└── troubleshooting/
    ├── nginx-outage.md
    ├── security-group-outage.md
    └── permissions-issue.md
Skills Demonstrated
Area	Hands-on Experience
AWS	EC2, Security Groups, S3, AWS CLI
Linux	Amazon Linux 2023 administration
Networking	SSH, HTTP, public/private IPs, Security Groups
Security	SSH key authentication, restricted SSH access, Linux permissions
Web Services	nginx installation, configuration and troubleshooting
Troubleshooting	Service, network, permission and log-based investigation
Automation	Bash scripting
File Operations	SCP, Linux permissions, ownership
Operations	Processes, services, logs and system inspection
Dev Tools	Git, GitHub, AWS CLI, SSH
Key Takeaways

This project gave me practical experience working across the layers that make up a basic cloud-hosted environment.

Rather than only deploying an EC2 instance, I used it as an actual administration environment—connecting remotely, managing users, controlling permissions, installing software, running a web service, examining logs and processes, and diagnosing failures.

The troubleshooting exercises were particularly useful because they required me to work from symptoms toward the root cause and determine whether an issue was coming from AWS networking, the Linux operating system, permissions, or the application/service itself.

This lab also reinforced the importance of being comfortable with the command line and understanding what is happening underneath the AWS console.

Next Steps

Potential extensions to this lab include:

Infrastructure as Code with Terraform
CloudWatch monitoring and alarms
IAM roles and least-privilege access
Systems Manager for remote administration
Automated EC2 provisioning
More advanced Bash automation
CI/CD integration
Containerizing the web application
Building the environment from scratch using Terraform

Status: Completed hands-on Linux/AWS administration lab
Focus: Cloud Engineering • Linux • AWS • Automation • Troubleshooting
