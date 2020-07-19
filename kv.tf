resource "vault_mount" "app" {
  path = var.app
  type = "generic"
}

git a
resource "vault_generic_secret" "example" {
  path = "${vault_mount.app.path}/pipeline/docker"

  data_json = <<EOT
{
  "DOCKER_LOGIN":   "${var.docker_username}",
  "DOCKER_PWD": "${var.docker_password}"
}
EOT
}