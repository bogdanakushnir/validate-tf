provider "random" {}

variable "first_last_name" {
  default = {
    "Name" : "Name",
    "LastName" : "LastName"
  }
}

module "name_complete" {
  for_each   = var.first_last_name
  source     = "./module_name/"
  first_name = each.key
  last_name  = each.value
}

data "http" "myip" {
  url = "https://api.ipify.org"
}

resource "null_resource" "test" {
  count = 5
}

