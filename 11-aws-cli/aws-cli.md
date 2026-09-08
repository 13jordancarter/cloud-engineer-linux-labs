For this step, I was able to practice us the AWS CLI to interact with my aws resources. I was able to set up access keys under my aws account, and use AWS configure command to authenticate to the cloud environment. I then was able to create an s3 bucket, verify block public access was turned on, upload a file to that bucket, verify it was present, and then delete the file. I also was able to interact with ec2 instances and describe what instances were running. The business impact on this is being able to interact with the aws environment in more efficient way then interacting in the GUI.

Commands used:

Create S3 bucket: aws s3 mb s3://my-bucket-name

List s3 buckets: aws s3 ls

Verify s3 block public access is enabled: aws s3api get-public-access-block --bucket my-bucket

Upload a file to s3: aws s3 cp myfile.txt s3://my-bucket/

List s3 bucket content: aws s3 ls s3://my-bucket/

Delete files from s3: aws s3 rm s3://my-bucket/myfile.txt

Query ec2 instance details: aws ec2 describe-instances

Filter ec2 instances by VPC: aws ec2 describe-instances --filters "Name=vpc-id,Values=vpc-ID"

Filter by availability zone: aws ec2 describe-instances --filters "Name=availability-zone,Values=us-east-1a"
