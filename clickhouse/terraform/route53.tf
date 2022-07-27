resource "aws_route53_record" "clickhouse" {
  count = var.instances_count

  zone_id = var.route53_zone_id
  name    = "clickhouse${count.index}.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = [aws_instance.clickhouse[count.index].public_ip]
}

resource "aws_route53_record" "clickhouse_common" {
  zone_id = var.route53_zone_id
  name    = "clickhouse.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = data.aws_instances.clickhouse.public_ips
}
