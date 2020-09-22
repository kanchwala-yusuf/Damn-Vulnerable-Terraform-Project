resource "aws_elasticsearch_domain" "esloggingdisabled" {
  domain_name           = "example"
  elasticsearch_version = "1.5"

  log_publishing_options {
    cloudwatch_log_group_arn = "arn:aws:logs:us-west-2:641885301384:log-group:siac_log_group_example:*"
    log_type                 = "INDEX_SLOW_LOGS"
    enabled                  = false
  }

  tags = {
    Domain = "TestDomain"
  }
}
