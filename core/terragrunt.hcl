include {
  path = "${get_repo_root()}/terragrunt.hcl"
}


generate "output" {
  path      = "outputs.tf"
  if_exists = "overwrite"
  contents  = <<EOF
output "ready" {
  value = "or not"
  description = "A sample output to demonstrate generation"
}
EOF
}

