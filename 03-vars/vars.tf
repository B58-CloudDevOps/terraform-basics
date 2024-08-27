# variable "a" {}     # This is called empty variable
# Supported datatypes in terraform
    # 1) Numbers 
    # 2) Boolents 
    # 3) Strings


variable "a" {
    default = 10          # This is how we declare value to a default variable 
} 

output "op" {
    value = var.a         # This is how we access a variable
}


# List variable 

variable "sample" {
    default = [
        100, 
        "terraform",
        true  
    ] 
}

# printing whole list variable
output "sample_op" {
    value = var.sample
}