variable "sg_pb" {
  type        = string
  description = "public security group"
  default     = "-public-sg"
}
variable "https_port" {
  type        = string
  description = "TCP port for consul"
  default     = "8500"
}
variable "http_port" {
  type        = string
  description = "TCP port for https"
  default     = "80"
}

variable "ssh_port" {
  type        = string
  description = "TCP port for ssh"
  default     = "22"
}

variable "pb_sg_tags" {
  default     = {}
  description = "Public Security group tags for consul"
  type        = map(string)
}
variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for consul vpc"
}
