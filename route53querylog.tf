resource "aws_route53_query_log" "route53LoggingDisabled" {

  cloudwatch_log_group_arn = "arn:aws:logs:us-west-1:123456789012:log-group:/route53Logging-12ABC1AB12A1:*."
  zone_id                  = "some-route53zone-id"
}