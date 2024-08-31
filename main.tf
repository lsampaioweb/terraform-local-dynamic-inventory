resource "local_file" "dynamic_inventory" {
  content = templatefile(var.path_inventory_template,
    {
      hosts_list = var.hosts_list
    }
  )
  filename = var.path_inventory

  directory_permission = var.directory_permission
  file_permission      = var.file_permission
}

resource "null_resource" "just_to_use_variables_in_destroy" {
  triggers = {
    path_playbook_scripts = var.path_playbook_scripts
    inventory_file        = var.path_inventory
    playbook_provision    = var.playbook_provision
    playbook_destroy      = var.playbook_destroy
  }

  provisioner "local-exec" {
    when = create

    working_dir = self.triggers.path_playbook_scripts
    command     = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ${self.triggers.inventory_file} ${self.triggers.playbook_destroy}"
  }

  provisioner "local-exec" {
    when = destroy

    working_dir = self.triggers.path_playbook_scripts

    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ${self.triggers.inventory_file} ${self.triggers.playbook_destroy}"
  }

  # Ensure the destroy playbook runs only after the local_file resource is created.
  depends_on = [local_file.dynamic_inventory]
}
