output "ssh_command" {
  value = "ssh -i ./key ${module.jumpbox.jumpbox_username}@${module.jumpbox.jumpbox_ip}"
}

resource "local_file" "key" {
  filename = "./key"
  sensitive_content  = module.jumpbox.ssh_private_key
  file_permission = "0600"
}