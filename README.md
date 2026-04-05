# EC2 Nginx Deployment with Terraform

This project provisions an Ubuntu 20.04 EC2 instance on AWS, installs Nginx, and serves a custom HTML page.

## Resources Created
- **Security Group**: Opens Port 80 (HTTP) and Port 22 (SSH).
- **EC2 Instance**: t2.micro running Ubuntu 20.04.
- **User Data**: Bash script to automate Nginx installation.

## Steps to Run
1. **Initialize Terraform**:
   ```bash
   terraform init
   ```
   