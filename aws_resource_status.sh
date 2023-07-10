#!/bin/bash

###############
# Author: Dhanush K S
# date 10th july 2023 12:48pm
# this file is to track was resource usage
#S3
#EC2
#lambda
#IAM
##############

set -x

echo "List of S3 Buckets"
aws s3 ls > aws_resource_tracker

echo "List of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > aws_resource_tracker

echo "List of Lambda Functions"
aws lambda list-functions | jq '.Functions[].FunctionName' > aws_resource_tracker

echo "List of IAM Users"
aws iam list-users | jq '.Users[].UserName' > aws_resource_tracker