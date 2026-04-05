# 1. Configure the AWS provider
provider "aws" {
  region = var.aws_region
}

# 2. Security Group Configuration
resource "aws_security_group" "nginx_sg" {
  name        = "shriram_nginx-server-sg"
  description = "Allow HTTP and SSH traffic"

  # Inbound HTTP
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound all traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Nginx-SG"
  }
}

# 3. EC2 Instance Configuration
resource "aws_instance" "nginx_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.nginx_sg.id]

  # user_data script to install Nginx and custom HTML
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              echo "<h1>Welcome to the Terraform-managed Nginx Server on Ubuntu</h1>" | sudo tee /var/www/html/index.html
              EOF

  tags = {
    Name = "Terraform-Nginx-Ubuntu"
  }
}