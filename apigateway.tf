resource "aws_api_gateway_stage" "apiGatewayLogging" {
  stage_name    = "prod"
  rest_api_id   = "some-id"
  deployment_id = "some-id"
}