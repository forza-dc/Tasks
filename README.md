There are two files: info.json and terraform.tf.

The info.json file containes information about an EC2 instance, including its private IP address.

The task is to extract the actual 'private IP address' from the info.json file, and replace the placeholder 'ec2-private_ip' in the terraform.tf file.

Using the awk command, the private IP from info.json is extracted and stored as a private_ip variable.

Then, using the sed command, it replaces the ec2-private_ip placeholder in the terraform.tf file with the value of private_ip.

The updated terraform.tf file will be the output, where the placeholder ec2-private_ip will be replaced with the actual private IP extracted from info.json.

Overall, the process involves using Linux commands (awk and sed) to extract and replace the private IP value within the terraform.tf file without manually editing the files.
