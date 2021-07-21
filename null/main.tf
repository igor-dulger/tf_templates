resource "null_resource" "resource1" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello big world!"
    }
  }
  
variable "no_set" {
  type = string
}
   
  triggers = {
    test = format("example+%s", timestamp())
  }
  
}
