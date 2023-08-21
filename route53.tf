
# DNS record using Route53.
data "aws_route53_zone" "my_domain" {
  name         = "sumeet.life"
  private_zone = false
}

resource "aws_route53_record" "custom_domain_record" {
  name = "api" # The subdomain (api.sumeet.life)
  type = "CNAME"
  ttl  = "300" # TTL in seconds

  records = ["${aws_api_gateway_rest_api.my_api.id}.execute-api.eu-central-1.amazonaws.com"]

  zone_id = data.aws_route53_zone.my_domain.zone_id
}

