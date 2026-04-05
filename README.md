# EC2 Nginx Deployment with Terraform

This project provisions an Ubuntu 20.04 EC2 instance on AWS, installs Nginx, and serves a custom HTML page.

## Resources Created
- **Security Group**: Opens Port 80 (HTTP) and Port 22 (SSH).
- **EC2 Instance**: t2.micro running Ubuntu 20.04.
- **User Data**: Bash script to automate Nginx installation.

<img width="1091" height="217" alt="image" src="https://github.com/user-attachments/assets/4d57096c-07a6-4de4-a2dd-badf24409a9d" />

## Steps to Run
1. **Initialize Terraform**:
   ```bash
   terraform init
   ```
   <img width="1121" height="450" alt="image" src="https://github.com/user-attachments/assets/1f2b13ac-bb6e-4bae-b2b7-589ef0cbc135" />
   
2. **Review Execution Plan:
   ```bash
   terraform plan
   ```
   <img width="1282" height="727" alt="image" src="https://github.com/user-attachments/assets/5feddb9e-6e69-450a-9fa0-4f6f3591276c" />
   
4. **Deploy Infrastructure:
   ```bash
   terraform apply -auto-approve
   ```
<img width="1285" height="637" alt="image" src="https://github.com/user-attachments/assets/f7933483-d8f5-46c2-956d-96cf46557aa5" />

<img width="767" height="356" alt="image" src="https://github.com/user-attachments/assets/8149fed4-1d32-4c66-a73f-db2d14294c3f" />

5. **Access the Server:
   Copy the instance_public_ip from the output and paste it into your browser.
   <img width="902" height="380" alt="image" src="https://github.com/user-attachments/assets/91220edb-2249-4e93-9690-1505f059ec36" />


7. **Cleanup:
   ```bash
   terraform destroy -auto-approve
   ```

   
