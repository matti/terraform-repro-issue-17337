module "anymodule" {
  source = "./anymodule"
}

resource "null_resource" "test_1" {
  provisioner "local-exec" {
    command = "${module.anymodule.on_create}"
  }

  provisioner "local-exec" {
    when    = "destroy"
    command = "${module.anymodule.on_destroy}"
  }
}
