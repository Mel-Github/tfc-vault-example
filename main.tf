terraform {
  required_version = "~>0.12"
}

provider "vault" {
  version = "~> 2.9"
}

resource "vault_generic_secret" "example" {
  path = "secret/foo"

  data_json = <<EOT
{
  "foo":   "bar",
  "pizza": "cheese"
}
EOT
}
