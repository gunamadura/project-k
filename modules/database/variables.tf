variable "engine" {
  description = "Database engine type (e.g., mysql, postgres)"
  type        = string
  default     = "mysql"
}
variable "instance_class" {
  description = "RDS instance type"
  type        = string
  default     = "db.t2.micro"
}

variable "allocated_storage" {
  description = "The size of the storage in gigabytes"
  type        = number
  default     = 20
}

variable "username" {
  description = "Master username for the RDS instance"
  type        = string
  default = "gdsenam"
}

variable "password" {
  description = "Master password for the RDS instance"
  type        = string
  default = "Initval3"
}

variable "db_name" {
  description = "The name of the database to be created"
  type        = string
  default     = "mydb"
}

variable "subnet_ids" {
  description = "List of subnet IDs to associate with the RDS instance"
  type        = list(string)

}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the RDS instance"
  type        = list(string)
}

