test_cases = {
  "01" = {
    hosts_list = []

    expected = <<-EOT
      [servers]
    EOT
  },
  "02" = {
    hosts_list = [{}]

    expected = <<-EOT
      [servers]
    EOT
  }
}
