#!/bin/bash
set -e

dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd

HOSTNAME=$(hostname)

# IMDSv2 token (required on Amazon Linux 2023)
TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" \
  -H "X-aws-ec2-metadata-token-ttl-seconds: 21600" -s)

AZ=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s \
  http://169.254.169.254/latest/meta-data/placement/availability-zone)

cat > /var/www/html/index.html <<EOF
<html>
  <head><title>Terraform HA Web App</title></head>
  <body style="font-family: Arial;">
    <h1>Terraform HA Web App ?</h1>
    <p><b>Instance:</b> ${HOSTNAME}</p>
    <p><b>AZ:</b> ${AZ}</p>
    <p>If you refresh, the ALB may send you to a different instance.</p>
  </body>
</html>
EOF