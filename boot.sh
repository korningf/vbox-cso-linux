#!/bin/bash

# apt keyrings
mkdir -p /etc/apt/keyrings

# apt repositories 


# apt packages
apt update

# banner (motd) 
curl  https://raw.githubusercontent.com/korningf/vbox-cso-linux/refs/heads/main/motd > /etc/motd

# constants
REGION=us-east-1

# variables
AWS_INSTANCE_ID=`curl -s http://169.254.169.254/latest/meta-data/instance-id`
EC2_NAME=$(aws ec2 describe-tags --region $REGION --filters "Name=resource-id,Values=$AWS_INSTANCE_ID" "Name=key,Values=Name" --output text | cut -f5)


