# EC2 + NGINX Deployment using Terraform and Ansible

## Project Overview
This project demonstrates how to create an AWS EC2 instance using Terraform and configure it with NGINX.

## Tools Used
- AWS EC2
- Terraform
- Ansible
- NGINX
- SSH

## What I Did
- Created an EC2 instance using Terraform
- Generated a key pair automatically
- Configured a security group for SSH and HTTP
- Connected to the EC2 instance using SSH
- Installed and started NGINX
- Verified the server using the public IP address

## Project Structure
- `main.tf` – contains EC2, security group, and key configuration
- `provider.tf` – AWS provider configuration
- `ansible/playbook.yml` – automation script for NGINX

## Resume
The EC2 instance was successfully deployed and NGINX is accessible via the public IP address.

## Note
Sensitive files like private keys and Terraform state files were excluded from this repository for security reasons.
