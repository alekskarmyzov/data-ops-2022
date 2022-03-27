resource "aws_instance" "dataops" {
  ami                         = var.ami_id
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  key_name                    = var.ssh_key_name
  security_groups = [aws_security_group.dataops.id]
  subnet_id = element(module.vpc.public_subnets, 0)

  tags = {
    Name      = "${var.owner}-${var.environment}"
    Terraform = "true"
    Owner     = var.owner
  }
}