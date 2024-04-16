variable "vpc_security_group_ids" {
  default = [ "sg-0f15c7e71393537f6" ]
}

variable "zone_id" {
  default = "Z09651852G8MXYMFFQDTV"
}


variable "components" {
  default = {
    frontend  = {
      name = "frontend-dev"
      instance_type = "t3.micro"
    }
    mongodb  = {
      name = "mongodb-dev"
      instance_type = "t3.micro"
    }
    catalogue  = {
      name = "catalogue-dev"
      instance_type = "t3.micro"
    }
    redis  = {
      name = "redis-dev"
      instance_type = "t3.micro"
    }
    user  = {
      name = "user-dev"
      instance_type = "t3.micro"
    }
    cart  = {
      name = "cart-dev"
      instance_type = "t3.micro"
    }
    mysql  = {
      name = "mysql-dev"
      instance_type = "t3.micro"
    }
    shipping  = {
      name = "shipping-dev"
      instance_type = "t3.micro"
    }
    rabbitmq  = {
      name = "rabbitmq-dev"
      instance_type = "t3.micro"
    }
    payment  = {
      name = "payment-dev"
      instance_type = "t3.micro"
    }
    dispatch  = {
      name = "dispatch-dev"
      instance_type = "t3.micro"
    }
  }
}
