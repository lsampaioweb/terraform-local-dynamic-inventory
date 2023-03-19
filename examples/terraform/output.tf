# output "all" {
#   value       = module.project
#   description = "The returned values."
# }

output "_expected" {
  value       = values(var.test_cases)[*].expected
  description = "The expected values."
}

output "_returned" {
  value       = values(module.project)[*].content
  description = "The returned values."
}

output "result" {
  value = [for key, value in var.test_cases :
    var.test_cases[key].expected == module.project[key].content &&
    var.test_cases[key].directory_permission == module.project[key].directory_permission &&
    var.test_cases[key].file_permission == module.project[key].file_permission
  ]
  description = "The comparison of the expected and returned values."
}
