variable "AWS-Two-Tier-Architecture" {
  type        = string
  description = "Terraform built AWS Two-Tier Architecture"
  default     = "Terraform-AWS-Two-Tier-Architecture"
}

variable "region" {
  type        = string
  description = "The AWS Region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  description = "The VPC CIDR block range"
  default     = "10.0.0.0/16"
}

variable "public_sbn_cidr_ranges" {
  type        = list(string)
  description = "Public subnet CIDR block ranges"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}


variable "private_sbn_cidr_ranges" {
  type        = list(string)
  description = "Private subnet CIDR block ranges"
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
  default     = "t3.micro"
}

variable "port" {
  type        = number
  description = "The port number"
  default     = 80
}

variable "protocol" {
  type        = string
  description = "The web traffic protocol"
  default     = "HTTP"
}

variable "db_username" {
  type        = string
  description = "MySQL database admin username"
  sensitive   = true
}

variable "db_password" {
  type        = string
  description = "MySQL database admin password"
  sensitive   = true
}

variable "db_name" {
  type        = string
  description = "The database name"
  default     = "mydb"
}

variable "db_engine" {
  type    = string
  default = "mysql"
}

variable "db_engine_version" {
  type    = string
  default = "5.7"
}

variable "db_instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "db_parameter_group_name" {
  type    = string
  default = "default.mysql5.7"
}

variable "db_allocated_storage" {
  type    = number
  default = 10
}