output "ssh_command" {
  value = "ssh -i ./key ${module.jumpbox.jumpbox_username}@${var.domain_name_label}.${var.location}.cloudapp.azure.com"
}

resource "local_file" "key" {
  filename = "./key"
  sensitive_content  = module.jumpbox.ssh_private_key
  file_permission = "0600"
}