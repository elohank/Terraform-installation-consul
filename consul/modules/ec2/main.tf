resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = "t2.large"
  tags                   = var.ec2_tags
  key_name               = "Ankit_main_key"
  vpc_security_group_ids = [var.security_group]
  subnet_id              = var.subnet
}
