include {
  path = "${get_repo_root()}/terragrunt.hcl"
}

dependency "parent" {
  config_path = "../core"
  mock_outputs = {
    ready = true
  }
  mock_outputs_allowed_terraform_commands = ["init", "plan", "apply"]
}

terraform {
  source = "git::https://github.com/example-huge-tg-modules/env1.git//?ref=v1.0.0"
}

