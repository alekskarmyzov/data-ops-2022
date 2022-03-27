resource "aws_route53_record" "dataops" {
  zone_id = var.zone_id
  name    = "dataops.akarmyzov.tl.scntl.com"
  type    = "A"
  ttl     = "300"
  records = [aws_eip.dataops.public_ip]
}