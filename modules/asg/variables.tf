variable "project_name" { type = string }
variable "vpc_id" { type = string }
variable "public_subnet_ids" { type = list(string) }

variable "alb_sg_id" { type = string }
variable "target_group_arn" { type = string }

variable "instance_type" { type = string }
variable "user_data_path" { type = string }

variable "min" { type = number }
variable "desired" { type = number }
variable "max" { type = number }
