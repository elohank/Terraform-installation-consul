variable "vpc_id" {
  default     = ""
  type        = string
}
variable "igw_id" {
    default = ""
}
variable "public_routeTable_tags" {
  type        = map(string)
  default = {
    Name    = "pub_RT",
    Owner   = "Ankit_Lohani",
  }

}

