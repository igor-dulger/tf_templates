variable "run_id" {
  default = "123456"
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
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "sleep 120"
  }
}
