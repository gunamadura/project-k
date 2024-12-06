output "endpoint" {
  description = "RDS endpoint URL"
  value       = aws_db_instance.db_instance.endpoint
}

output "credentials" {
  description = "Database credentials"
  value = {
    username = var.username
    password = var.password
  }
}
# output "engine" {
#   value =""
# }
# # output "subnet_ids" {
#   value = module.network.resource
# }
