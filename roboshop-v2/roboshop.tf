variable "components" {
  default = {
    frontend  = { name = "frontend-dev" }
    mongodb   = { name = "mongodb-dev" }
    catalogue = { name = "catalogue-dev" }
    redis     = { name = "redis-dev" }
    user      = { name = "user-dev" }
    cart      = { name = "cart-dev"}
    mysql     = { name = "mysql-dev" }
    shipping  = { name = "shipping-dev" }
    rabbitmq  = { name = "rabbitmq-dev"}
    payment   = { name = "payment-dev" }
    dispatch  = { name = "dispatch-dev" }
  }
}

variable "ami" {
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
  default = "t3.small"
}

variable "vpc_security_group_ids" {
  default = [ "sg-0f15c7e71393537f6" ]
}

variable "zone_id" {
  default = "Z09651852G8MXYMFFQDTV"
}


resource "aws_instance" "instance" {
  for_each               = var.components
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "www" {
  for_each = var.components
  zone_id  = var.zone_id
  name     = "${lookup(each.value, "name", null)}.rdevops74.online"
  type     = "A"
  ttl      = 30
  records  = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
}