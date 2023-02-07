output "content" {
  value       = local_file.dynamic_inventory.content
  description = "The content of the created file."
}

output "directory_permission" {
  value       = local_file.dynamic_inventory.directory_permission
  description = "The permission of the created directory."
}

output "file_permission" {
  value       = local_file.dynamic_inventory.file_permission
  description = "The permission of the created file."
}

output "filename" {
  value       = local_file.dynamic_inventory.filename
  description = "The path and name of the file."
}

output "id" {
  value       = local_file.dynamic_inventory.id
  description = "The id of the file."
}
