resource "aws_security_group" "dataops" {
  name        = "${var.vpc_owner}i${var.environment}-sg"
  description = "SG for Otus DataOps test EC2 instance"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name      = "${var.owner}-${var.environment}-sg"
    Terraform = "true"
    Owner     = var.owner
  }
}