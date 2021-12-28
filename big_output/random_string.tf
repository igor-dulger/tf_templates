resource "random_string" "random-string" {
  length = "${var.length}"
  count = 6000
}

variable "length" {
  default = 20
}
