For this step, I was able to simulate creating two new employee accounts Cam and Ward, then created passwords for their accounts. I then add them to the newly created cloudengineer group. Once added, I was able to verify membership and examine their home directories. I determined what permissions they had in the group and added them Read access for group permission level files to simulate not giving new employees too much permissions. I then removed Ward from the group and verified they were no longer in the group. These steps solve the business impact of getting newly onboarded employees live in the system and not granting to high of access on group objects that can disrupt business operations.

Commands used:

Creating group: sudo group add cloudengineer
Creating user and assigning primary group: useradd -g cloudengineer cam
Create password: sudo passwd cam
Verify membership: id cam
Examine home directories: sudo ls -la /home/cam
Determine Permissions: sudo ls -ld /home/cam
Update Permissions for personal items to RWX and group items to read only: sudo chmod 740 /home/ward
Remove user from primary cloudengineer group and add to users group: sudo usermod -g users ward
