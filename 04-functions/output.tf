variable "fruits" {} 

output "apple" {
    value = " Apple color is ${var.fruits["apple"]["color"]} and ${var.fruits["apple"]["metric"]} price is ${var.fruits["apple"]["price"]}"
}