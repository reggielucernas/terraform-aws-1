variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = ""
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the Public Subnet"
  type        = string
  default     = ""
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the Private Subnet"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to set on the EC2 instance"
  type        = map(string)
  default     = { Name = "Base Platform VPC" }
}

variable "availability_zone" {
  description = "The AZ for the subnet"
  type = string
  default = "us-east-1a"
}