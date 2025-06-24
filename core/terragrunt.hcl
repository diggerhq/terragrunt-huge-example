include {
  path = "${get_repo_root()}/terragrunt.hcl"
}


generate "output" {
  path      = "outputs.tf"
  if_exists = "overwrite"
  contents  = <<EOF
output "test_output" {
  value = "filterme: topsecretstuff"
  description = "A sample output to demonstrate generation"
}
EOF
}


locals {
  dontsay = yamldecode(sops_decrypt_file("${get_terragrunt_dir()}/secret.yml"))
}

generate "output" {
  path      = "outputs.tf"
  if_exists = "overwrite"
  contents  = <<EOF
output "dontsay" {
  value = local.dontsay
  description = "A sample output to demonstrate generation"
}
EOF
}




