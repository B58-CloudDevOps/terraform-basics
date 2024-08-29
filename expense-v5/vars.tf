variable "components" {
  default = {
    frontend = { # each.key
      instance_type = "t3.small"

    }
    backend = {
      instance_type = "t3.micro" # each.value
    }
    mysql = {
      instance_type = "t3.small"
    }
  }
}


variable "ami" {
  default = "ami-0fcc78c828f981df2"
}

variable "vpc_security_group_ids" {
  default = ["sg-08c9eb09595f5de07"] # Please don't copy this, use as per the b58-sg that you've created.
}
