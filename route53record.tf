resource "aws_route53_record" "noRoute53RecordSet" {
  allow_overwrite = true
  name            = "test.example.com"
  ttl             = 30
  type            = "NS"
  zone_id         = "some-zone-id"
}