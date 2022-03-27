data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dataops" {
  ami                         = data.aws_ami.ubuntu.id
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