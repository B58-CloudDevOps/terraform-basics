data "aws_route53_zone" "main" {
  name         = "expense.internal"
  private_zone = true
}

# output "zone_info" {
#   value = data.aws_route53_zone.main.id 
# }
