variable "path_playbook_scripts" {
  description = "The path where the ansible playbooks are stored. Defaults to '../ansible'."
  type        = string
  default     = "../ansible"
}

variable "path_inventory" {
  description = "The path where the ansible inventory file is stored. Defaults to '../ansible/inventory/hosts'."
  type        = string
  default     = "../ansible/inventory/hosts"
}

variable "path_inventory_template" {
  description = "The path where the ansible inventory template file is stored. Defaults to '../ansible/inventory/hosts.tpl'."
  type        = string
  default     = "../ansible/inventory/hosts.tpl"
}

variable "directory_permission" {
  description = "The permission on the created directory. Defaults to '0644'."
  type        = string
  default     = "0644"
}

variable "file_permission" {
  description = "The permission on the created file. Defaults to '0644'."
  type        = string
  default     = "0644"
}

variable "hosts_list" {
  description = "The list of hosts (virtual machines). Defaults to '[{}]]'."
  type        = list(map(any))
  default     = [{}]
}

variable "playbook_provision" {
  description = "Name of the playbook that will be executed during the provision of the VM. Defaults to 'provision.yml'."
  type        = string
  default     = "provision.yml"
}

# TODO: Find a way to make this work.
# variable "playbook_destroy" {
#   description = "Name of the playbook that will be executed during the destruction of the VM. Defaults to 'destroy.yml'."
#   type        = string
#   default     = "destroy.yml"
# }
