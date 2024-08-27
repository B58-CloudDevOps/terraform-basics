variable "fruits" {} 

output "apple" {
    value = " Apple color is ${var.fruits["apple"]["color"]} and ${var.fruits["apple"]["metric"]} price is ${var.fruits["apple"]["price"]}"
}

output "grapes" {
    value = " Graphes color is ${var.fruits["grapes"]["color"]} and ${var.fruits["grapes"]["metric"]} price is ${var.fruits["grapes"]["rate"]}"
}