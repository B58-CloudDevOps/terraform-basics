variable "fruits" {} 

output "apple" {
    value = " Apple color is ${lookup(var.fruits["apple"], "color" , "green" )} and ${var.fruits["apple"]["metric"]} price is ${var.fruits["apple"]["price"]}"
}

output "grapes" {
    value = " Graphes color is ${var.fruits["grapes"]["color"]} and ${var.fruits["grapes"]["metric"]} price is ${var.fruits["grapes"]["rate"]}"
}