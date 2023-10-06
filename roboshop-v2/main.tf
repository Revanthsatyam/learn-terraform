variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "security_groups" {
  default = [ "sg-0d4b222d581ee6fa6" ]
}

variable "instance_type" {
  default = "t3.small"
}

variable "zone_id" {
  default = "Z016529012O8LO70UGVHH"
}

variable "components" {
  default = {
    frontend = { name = "frontend-dev" }
    mongodb = { name= "mongodb-dev" }
    catalogue = { name= "catalogue-dev" }
    user = { name= "user-dev" }
    redis = { name= "redis-dev" }
    cart = { name= "cart-dev" }
    mysql = { name= "mysql-dev" }
    shipping = { name= "shipping-dev" }
    rabbitmq = { name= "rabbitmq-dev" }
    payment = { name= "payment-dev" }
  }
}

output "components" {
  value = var.components
}

#resource "aws_instance" "frontend" {
#  for_each = var.components
#  ami           = var.ami
#  instance_type = var.instance_type
#  vpc_security_group_ids = var.security_groups
#
#  tags = {
#    Name = lookup(each.value, "name", null)
#  }
#}

#resource "aws_route53_record" "record" {
#  for_each = var.components
#  zone_id = var.zone_id
#  name    = "${lookup(each.value, "name", null)}.rdevops74.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.frontend.private_ip]
#}