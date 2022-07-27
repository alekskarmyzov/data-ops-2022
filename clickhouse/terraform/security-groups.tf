resource "aws_security_group" "clickhouse" {
  name        = "${var.prefix}-clickhouse-sg"

  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "All traffic"
    from_port        = 0
    to_port          = 0
    protocol         = -1
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.prefix}-clickhouse-sg"
    Terraform = "true"
    Owner = var.prefix
  }
}