#!/bin/bash

# Read the private IP from info.json using awk
private_ip=$(awk -F'"' '/"PrivateIpAddress":/ {print $4}' info.json)

# Update the ec2_private_ip in terraform.tf using sed
sed -i "40s/.*/  kubernetes_api_url            = \"https:\/\/$private_ip:6443\"/" terraform.tf

echo "Private IP updated successfully in terraform.tf"
