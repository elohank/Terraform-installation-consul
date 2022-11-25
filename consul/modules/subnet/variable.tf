variable "public_subnet_cidr" {
  type        = string
    default     = ""
}
variable "public_subnet_tags" {
  default     = {}
    type        = map(string)
}
variable "public_subnet_zone" {
  default     = {}
}
variable "public_routeTable_id" {
  default     = {}
}
variable "vpc_id" {
  default     = ""
  type        = string
}

