variable "vpc_cidr" {
  default     = ""
  type        = string
}
variable "vpc_tags" {
  default     = {}
  type        = map(string)
}

