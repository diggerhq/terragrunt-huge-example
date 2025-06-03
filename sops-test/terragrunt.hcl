locals {
  secrets = get_env("DIGGER_GENERATE_PROJECT", "false") == "true" ? {} : yamldecode(sops_decrypt_file("secrets.yaml"))

}

terraform {
  source = "git::https://github.com/diggerhq/digger-external-repos//env01?ref=v1.0.0"
}


