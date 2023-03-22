test_cases = {
  "01" = {
    path_inventory          = "../ansible/inventory/03"
    path_inventory_template = "../ansible/inventory/03.tpl"

    hosts_list = [
      {
        hostname  = "VM-01",
        public_ip = "10.0.0.1",
        port      = "8080"
      },
      {
        hostname  = "VM-02",
        public_ip = "10.0.0.2",
        port      = "443"
      }
    ]
    expected = <<-EOT
      [servers]
      VM-01 ansible_host=10.0.0.1 port=8080
      VM-02 ansible_host=10.0.0.2 port=443
    EOT
  }
}
