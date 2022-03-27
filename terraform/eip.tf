resource "aws_eip" "dataops" {
  instance = aws_instance.dataops.id
  vpc      = true

  tags = {
    Name      = "${var.owner}-${var.environment}"
    Terraform = "true"
    Owner     = var.owner
  }
}