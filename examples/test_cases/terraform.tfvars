test_cases = {
  "01" = {
    path_playbook_scripts   = "../ansible"
    path_inventory          = "../ansible/inventory/01"
    path_inventory_template = "../ansible/inventory/01.tpl"
    directory_permission    = "0644"
    file_permission         = "0644"
    hosts_list              = [{}]
    playbook_provision      = "provision.yml"
    expected                = <<-EOT
      [servers]
    EOT
  },
  "02" = {
    path_inventory          = "../ansible/inventory/02"
    path_inventory_template = "../ansible/inventory/02.tpl"
    hosts_list              = []
    expected                = <<-EOT
      [servers]
    EOT
  }
  "03" = {
    path_playbook_scripts   = "../ansible"
    path_inventory          = "../ansible/inventory/03"
    path_inventory_template = "../ansible/inventory/03.tpl"
    directory_permission    = "0666"
    file_permission         = "0666"
    hosts_list = [{
      hostname  = "VM-01",
      public_ip = "10.0.0.1"
    }]
    playbook_provision = "provision.yml"
    expected           = <<-EOT
      [servers]
      VM-01 ansible_host=10.0.0.1
    EOT
  },
  "04" = {
    path_playbook_scripts   = "../ansible"
    path_inventory          = "../ansible/inventory/04"
    path_inventory_template = "../ansible/inventory/04.tpl"
    directory_permission    = "0444"
    file_permission         = "0444"
    hosts_list = [{
      hostname  = "VM-01",
      public_ip = "10.0.0.1",
      port      = "8080"
      },
      {
        hostname  = "VM-02",
        public_ip = "10.0.0.2",
        port      = "443"
    }]
    playbook_provision = "provision.yml"
    expected           = <<-EOT
      [servers]
      VM-01 ansible_host=10.0.0.1 port=8080
      VM-02 ansible_host=10.0.0.2 port=443
    EOT
  }
}
