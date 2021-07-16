variable "ami" {
  description = "The ami ID"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = ""
}

variable "availability_zone" {
  description = "The Availability zone"
  type        = string
  default     = ""
}