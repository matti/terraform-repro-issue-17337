resource "null_resource" "wat" {}

output "on_create" {
  value = "${data.local_file.on_create.content}"
}

output "on_destroy" {
  value = "${data.local_file.on_destroy.content}"
}

data "local_file" "on_create" {
  ## Enabling this triggers the bug
  #depends_on = ["null_resource.wat"]
  filename = "${path.module}/on_create.txt"
}

data "local_file" "on_destroy" {
  ## Enabling this triggers the bug
  #depends_on = ["null_resource.wat"]
  filename = "${path.module}/on_destroy.txt"
}
