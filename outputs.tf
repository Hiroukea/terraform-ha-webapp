output "alb_dns_name" {
  value       = aws_lb.this.dns_name
  description = "Open this in your browser"
}

output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}
