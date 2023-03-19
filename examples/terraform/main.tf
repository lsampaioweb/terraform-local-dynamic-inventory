module "project" {
  source = "../../"

  for_each = var.test_cases

  path_playbook_scripts   = each.value.path_playbook_scripts
  path_inventory          = each.value.path_inventory
  path_inventory_template = each.value.path_inventory_template
  directory_permission    = each.value.directory_permission
  file_permission         = each.value.file_permission
  hosts_list              = each.value.hosts_list
  playbook_provision      = each.value.playbook_provision
}
