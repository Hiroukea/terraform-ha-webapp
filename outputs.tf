output "alb_dns_name" {
  value       = module.alb.alb_dns_name
  description = "Open this in your browser"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}
