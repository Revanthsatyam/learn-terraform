variable "zone_id" {
  default = "Z016529012O8LO70UGVHH"
}

variable "security_groups" {
  default = [ "sg-0d4b222d581ee6fa6" ]
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
    cart = {
      name = "cart"
      instance_type = "t3.micro"
    }
  }
}