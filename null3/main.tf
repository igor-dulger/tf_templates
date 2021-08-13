resource "null_resource" "resource1" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello big world!"
    }
  }

  hi main-1  
  
  triggers = {
    test = format("example+%s", timestamp())
  }
}
