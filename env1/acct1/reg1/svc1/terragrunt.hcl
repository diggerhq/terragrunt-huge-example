include {
  path = "${get_repo_root()}/terragrunt.hcl"
}

dependency "parent" {
  config_path = "../"
  mock_outputs = {
    ready = true
  }
  mock_outputs_allowed_terraform_commands = ["plan", "apply"]
}

terraform {
  source = "git::https://github.com/example-huge-tg-modules/svc1.git//?ref=v1.0.0"
}


