# Creates EC2 Instance 
resource "aws_instance" "main" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }
}

# Creates DNS Record
resource "aws_route53_record" "main" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.expense.internal"
  type    = "A"
  ttl     = 10
  records = [aws_instance.main.private_ip]
}


# This is dependent on ec2 instance and route53 record creation. Once both of created, then only I would like to run this.
# For this to control the order of execution we can something called as depends_on
resource "null_resource" "main" {
  depends_on = [aws_route53_record.main, aws_instance.main]
  provisioner "local-exec" {
    command = "sleep 10; cd /home/ec2-user/ansible ; ansible-playbook -i ${aws_instance.main.private_ip},  -e ansible_user=ec2-user -e ansible_password=DevOps321 -e COMPONENT=${var.name} -e ENV=dev  expense.yml"
  }
}