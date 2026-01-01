# Terraform – Highly Available AWS Web Application

Live Demo

http://tf-lb-20251231232303230300000007-1483767039.us-east-1.elb.amazonaws.com/

This project was deployed and destroyed after confirmation to avoid unnecessary cloud costs.

It demonstrates how to design, deploy, and manage a highly available web application on AWS using Terraform with a modular infrastructure-as-code approach

The infrastructure is fully automated, version-controlled, and deployed usin PowerShell, making it reproducible and production-aligned.


🧱 Architecture Overview

The application is deployed across multiple Availability Zones and includes:

- VPC with public subnets in 2 AZs
- Internet Gatewayand public route table
- Application Load Balancer (ALB) with health checks
- Auto Scaling Group (ASG) with EC2 instances
- Launch Template with user data (Apache auto-install)
- Security Groups with least-privilege rules
- Terraform modulesfor clean, reusable code
- Terraform remote state (S3 + DynamoDB locking)

