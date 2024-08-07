test_cases = {
  "01" = {
    path_inventory          = "../ansible/inventory/vms-01"
    path_inventory_template = "../ansible/inventory/vms.tpl"

    expected = <<-EOT
      [servers]
    EOT
  }
}
