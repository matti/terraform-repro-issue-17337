# terraform-repro-issue-17337

https://github.com/hashicorp/terraform/issues/17337#issuecomment-365379563

see [anymodule/main.tf] on how to toggle the bug

Pass it first:

  $ terraform init
  $ terraform apply

Then edit the file and `apply` again
