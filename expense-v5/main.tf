module "app" {
  for_each = var.components

  source                 = "./app"
  ami                    = var.ami
  instance_type          = each.value["instance_type"]
  name                   = each.key
  vpc_security_group_ids = var.vpc_security_group_ids
  zone_id                = data.aws_route53_zone.main.id
}