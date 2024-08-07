test_cases = {
  "03" = {
    hosts_list = [
      {
        hostname  = "VM-03",
        public_ip = "10.0.0.3",
        port      = "8383"
      }
    ]
    expected = <<-EOT
      [servers]
      VM-03 ansible_host=10.0.0.3 port=8383
    EOT
  }
}
