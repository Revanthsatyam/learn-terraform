resource "aws_instance" "frontend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "Frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "MongoDB"
  }
}

resource "aws_instance" "Catalogue" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "Catalogue"
  }
}

resource "aws_instance" "redis" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "Redis"
  }
}

resource "aws_instance" "user" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "User"
  }
}

resource "aws_instance" "cart" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "Cart"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "MySQL"
  }
}

resource "aws_instance" "shipping" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "Shipping"
  }
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "RabbitMQ"
  }
}

resource "aws_instance" "payment" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "Payment"
  }
}

resource "aws_instance" "dispatch" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.small"

  tags = {
    Name = "Dispatch"
  }
}