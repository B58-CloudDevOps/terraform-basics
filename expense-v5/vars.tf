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
