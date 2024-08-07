test_cases = {
  "04" = {
    path_inventory = "../ansible/inventory/vms-04"

    hosts_list = [
      {
        hostname  = "VM-04",
        public_ip = "10.0.0.4",
        port      = "8484"
      }
    ]
    expected = <<-EOT
      [servers]
      VM-04 ansible_host=10.0.0.4 port=8484
    EOT
  }
}
