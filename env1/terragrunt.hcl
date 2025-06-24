include {
  path = "${get_repo_root()}/terragrunt.hcl"
}

dependency "parent" {
  config_path = "../core"
  mock_outputs = {
    ready = true
  }
  mock_outputs_allowed_terraform_commands = ["init", "plan", "apply", "show"]
}


generate "output" {
  path      = "outputs.tf"
  if_exists = "overwrite"
  contents  = <<EOF
output "dep_ready" {
  value = "${dependency.parent.outputs.ready}"
}
EOF
}