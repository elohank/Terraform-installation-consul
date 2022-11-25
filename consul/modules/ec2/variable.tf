variable "ami" {
  type        = string
  default     = ""
}
variable "ec2_tags" {
  type        = map(string)
  default = {
    Name    = "consul-ec2",
    Owner   = "Ankit_Lohani",
  }
}
variable "security_group" {
  type        = string
  default     = ""
}
variable "subnet" {
  type        = string
  default     = ""
}
