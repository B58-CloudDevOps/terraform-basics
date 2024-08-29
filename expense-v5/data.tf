data "aws_route53_zone" "main" {
  name         = "expense.internal"
  private_zone = true
}

data "aws_security_group" "main" {
  filter {
    name   = "group-name"
    values = "b58-allows-all"
  }
}

output "sgid" {
  value = data.aws_security_group.main
}
