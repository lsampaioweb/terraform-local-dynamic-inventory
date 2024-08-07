test_cases = {
  "01" = {
    path_inventory          = "../ansible/inventory/vms-02"
    path_inventory_template = "../ansible/inventory/vms.tpl"

    hosts_list = []

    expected = <<-EOT
      [servers]
    EOT
  },
  "02" = {
    path_inventory          = "../ansible/inventory/vms-02"
    path_inventory_template = "../ansible/inventory/vms.tpl"

    hosts_list = [{}]

    expected = <<-EOT
      [servers]
    EOT
  }
}
