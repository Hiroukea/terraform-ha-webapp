# Terraform Highly Available Web App (Project 1)

This repo provisions a highly available web application on AWS using Terraform.

## What it builds
- VPC
- 2 Public Subnets (2 AZs)
- Internet Gateway + routing
- Security Groups (ALB + EC2)
- Application Load Balancer (HTTP :80)
- Target Group + Listener
- Launch Template (Amazon Linux 2023 + Apache via user data)
- Auto Scaling Group (desired/min 2, max 4)
- Remote Terraform state (S3 backend + DynamoDB locking)

## Run (PowerShell)
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply -auto-approve
terraform output -raw alb_dns_name

Open:
http://<alb_dns_name>

## Cleanup
terraform destroy -auto-approve

## Notes
- Terraform state is stored remotely in S3
- DynamoDB is used for state locking
- tfstate files are not committed
