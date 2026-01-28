
variable "first_name" {}
# TODO: rename it
variable "middle_name" {}
variable "last_name" {}
# variable "password" {} 
# the password will be 123

resource "null_resource" "name" {
  provisioner "local-exec" {
    command = "echo From the module: First name is ${var.first_name} last name is ${var.last_name}, ${var.middle_name}"
  }
}
