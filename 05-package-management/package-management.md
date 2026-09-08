For this step, I was able to work with configuring packages. I was able to install some common packages from the AWS Connect shell. Packages included Git, Curl, Tree, and Wget. I was able to search for the installed packages and check version numbers for the packages. I then checked for updates and removed a few packages. I also was able to determine where these executables were actually installed. The business impact on this is being able to determine what is on the machine, if the packages are up to date, and removing any unneeded packages. This ensures security of the machine and up to date functionality of the packages.

Commands used:

Install packages: sudo yum install git curl wget tree

Check for packages: yum list installed | grep -E "git|curl|wget|tree"

Check version: git --version

Update packages: sudo dnf upgrade git curl wget tree

Remove Packages: sudo dnf remove wget

Verify where package executables live: which git

List all files and packages installed: rpm -ql git
