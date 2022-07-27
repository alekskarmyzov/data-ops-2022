resource "aws_instance" "clickhouse" {
  count = var.instances_count

  ami           = var.instance_ami
  instance_type = var.instance_type

  subnet_id = element(module.vpc.public_subnets, count.index)
  availability_zone = element(var.az_list, count.index)

  associate_public_ip_address = true  
  user_data = file("${path.module}/userdata.sh")
  vpc_security_group_ids  = [aws_security_group.clickhouse.id]
  key_name = var.ssh_key_name

  root_block_device {
    volume_size = 50
  }

  tags = {
    Name = "${var.prefix}-clickhouse-instance-${count.index}"
    Type = "${var.prefix}-clickhouse-instance"
  }
}

data "aws_instances" "clickhouse" {
  instance_tags = {
    Type = "${var.prefix}-clickhouse-instance"
  }
}