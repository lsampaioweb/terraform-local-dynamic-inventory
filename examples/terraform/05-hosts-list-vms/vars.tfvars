test_cases = {
  "05" = {
    path_inventory = "../ansible/inventory/vms-05"

    hosts_list = [
      {
        hostname  = "VM-05",
        public_ip = "10.0.0.5",
        port      = "8585"
      },
      {
        hostname  = "VM-06",
        public_ip = "10.0.0.6",
        port      = "443"
      },
      {
        hostname  = "VM-07",
        public_ip = "10.0.0.7",
        port      = "8787"
      }
    ]
    expected = <<-EOT
      [servers]
      VM-05 ansible_host=10.0.0.5 port=8585
      VM-06 ansible_host=10.0.0.6 port=443
      VM-07 ansible_host=10.0.0.7 port=8787
    EOT
  }
}
