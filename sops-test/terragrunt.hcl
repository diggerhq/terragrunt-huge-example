locals {
  secrets = get_env(DIGGER_GENERATE_PROJECT, "false") == "true" ? {} : yamldecode(sops_decrypt_file("secrets.yaml"))

}

terraform {
  source = "git::https://github.com/digger-external-repos/env1.git//?ref=v1.0.0"
}

