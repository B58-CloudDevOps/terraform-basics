# Backend Module 

resource "null_resource" "sample" {
  count = length(var.colors)
}


variable "colors" {}
# Variables that are used in the root module should be mentioned here
# This is how we are going to receive the information from the module