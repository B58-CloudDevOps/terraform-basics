data "aws_route53_zone" "main" {
  name         = "expense.internal"
  private_zone = true
}

data "aws_security_group" "main" {
  filter {
    name   = "group-name"       # As per teh documentation : https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html
    values = ["b58-allows-all"] # Name of your security groups
  }
}

output "sgid" {
  value = data.aws_security_group.main
}
