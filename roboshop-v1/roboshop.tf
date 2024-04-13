resource "aws_instance" "frontend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "Frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "MongoDB"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "Catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "Redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "User"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "Cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "MySQL"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "Shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "RabbitMQ"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "Payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0f15c7e71393537f6" ]

  tags = {
    Name = "Dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z09651852G8MXYMFFQDTV"
  name    = "www.example.com"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}