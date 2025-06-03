include {
  path = "${get_repo_root()}/terragrunt.hcl"
}

terraform {
  source = "git::https://github.com/digger-external-repos/core.git//?ref=v1.0.0"
}
