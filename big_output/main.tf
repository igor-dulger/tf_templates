resource "random_string" "random-string" {
  length = "${var.length}"
  count = 1000
}

variable "length" {
  default = 20
}
