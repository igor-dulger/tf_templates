resource "null_resource" "resource1" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello big world!"
    }
  }
  
  triggers = {
    test = format("example+%s", timestamp())
  }
}
