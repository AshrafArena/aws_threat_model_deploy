resource "aws_route53_record" "subdomain" {
  zone_id = var.route53_zone_id
  name    = var.subdomain
  type    = "CNAME"
  ttl     = 300

  records = [var.alb_dns_name]
}
