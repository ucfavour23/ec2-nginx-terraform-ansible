# AWS EC2 Web Server Deployment with Terraform and Ansible

## Project Overview
This project demonstrates how I provisioned an AWS EC2 instance using Terraform and configured it to run NGINX. The goal was to practice Infrastructure as Code and basic server configuration in a real cloud environment.

## Tools Used
- AWS EC2
- Terraform
- Ansible
- NGINX
- SSH
- GitHub

## Project Tasks
- Provisioned an EC2 instance with Terraform
- Created and attached a security group
- Generated and used an SSH key
- Connected to the EC2 instance using SSH
- Installed and started NGINX
- Verified the deployment from the browser

## Project Workflow
1. Created Terraform configuration files
2. Ran `terraform init`
3. Ran `terraform apply`
4. Connected to the EC2 instance with SSH
5. Installed NGINX
6. Verified the NGINX welcome page in the browser
7. Uploaded project files to GitHub

## Screenshots

### 1. terraform-apply.png
<img width="1250" height="718" alt="EC2 created successfully" src="https://github.com/user-attachments/assets/9f9de5a5-dfa0-4814-ac68-2a798b468106" />



### 2. SSH Connection to EC2
<img width="1230" height="706" alt="Connected to EC2 instance" src="https://github.com/user-attachments/assets/51684966-aaf2-4db0-a6ac-20bb27c07ae0" />


### 3. nginx-running.png
<img width="1179" height="610" alt="Nginx installed on EC2 instance" src="https://github.com/user-attachments/assets/4e471ff7-f958-4995-9a6d-2522467bd3d9" />


### 4. NGINX Welcome Page in Browser
<img width="1228" height="426" alt="NGINX webserver successfully deployed and accessible via AWS EC2 public IP (HTTP)" src="https://github.com/user-attachments/assets/d4bb438d-a9a2-474f-8fb5-8eeb77f5382a" />


## Result
The EC2 instance was successfully provisioned and configured to run NGINX. The web server was accessible using the EC2 public IP address.

## Key Skills Demonstrated
- Infrastructure as Code
- AWS EC2 provisioning
- Security group configuration
- Linux server access with SSH
- Web server installation and verification
- Git and GitHub project documentation
