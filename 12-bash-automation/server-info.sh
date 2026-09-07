#!/bin/bash

echo "=== Instance Details ==="

INSTANCE_ID="i-0050cb665ab76352e"

aws ec2 describe-instances \
  --instance-ids "$INSTANCE_ID" \
  --query "Reservations[0].Instances[0].{
    ID:InstanceId,
    Type:InstanceType,
    State:State.Name,
    AMI:ImageId,
    PublicIP:PublicIpAddress,
    PrivateIP:PrivateIpAddress,
    AZ:Placement.AvailabilityZone,
    Subnet:SubnetId,
    VPC:VpcId,
    Launched:LaunchTime,
    Key:KeyName
  }" \
  --output table
~                                                                               
                                                              9,23          All

