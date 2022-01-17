variable "run_id" {
  default = "1234"
}

resource "random_integer" "timeout" {
  min = 30
  max = 180

  keepers = {
    run_id = var.run_id
  }
}
resource "null_resource" "wait" {
  triggers = {
    test = format("example+%s", timestamp())
  }
  provisioner "local-exec" {
    command = "sleep 210"
  }
}
