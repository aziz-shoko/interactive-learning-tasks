resource "aws_route53_record" "www" {
  zone_id = "Z00231143C93X5HXXJEQT"
  name    = "wordpress.azizshoko.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]
}
