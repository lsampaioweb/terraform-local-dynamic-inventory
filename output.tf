output "content" {
  description = "The content of the created file."
  value       = local_file.dynamic_inventory.content
}

output "directory_permission" {
  description = "The permission of the created directory."
  value       = local_file.dynamic_inventory.directory_permission
}

output "file_permission" {
  description = "The permission of the created file."
  value       = local_file.dynamic_inventory.file_permission
}

output "filename" {
  description = "The path and name of the file."
  value       = local_file.dynamic_inventory.filename
}

output "id" {
  description = "The id of the file."
  value       = local_file.dynamic_inventory.id
}
