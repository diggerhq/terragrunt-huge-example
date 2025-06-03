secret_vars = yamldecode(sops_decrypt_file(find_in_parent_folders("secrets.yaml")))

terraform {
  source = "git::https://github.com/digger-external-repos/env1.git//?ref=v1.0.0"
}

