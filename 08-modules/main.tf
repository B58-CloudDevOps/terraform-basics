# Calling a backend module which is locally available 
# Root Module

# An example to demonstrate how to send the information from root module to the backend module while calling.
module "test" {
  source = "./sample"
  colors = var.colors # This is how we pass the info to the backend module from the root module
}




variable "colors" {
  default = ["grey", "green"]
}

### Whatever the variables that you're defining here, should also be defined in the backend as an empty variable