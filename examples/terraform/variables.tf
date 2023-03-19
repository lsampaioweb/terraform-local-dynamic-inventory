variable "test_cases" {
  description = "The test cases."
  type = map(object({
    path_playbook_scripts   = optional(string, "../ansible")
    path_inventory          = optional(string, "../ansible/inventory/hosts")
    path_inventory_template = optional(string, "../ansible/inventory/hosts.tpl")
    directory_permission    = optional(string, "0644")
    file_permission         = optional(string, "0644")
    hosts_list              = optional(list(map(any)), [{}])
    playbook_provision      = optional(string, "provision.yml")

    expected = string
  }))
}
