# Budget details
variable "budget_name" {
  description = "The name of the budget"
  type        = string
}

variable "budget_type" {
  description = "The type of budget (e.g., 'COST')"
  type        = string
  default     = "COST"
}

variable "limit_amount" {
  description = "The budget limit amount"
  type        = number
}

variable "limit_unit" {
  description = "The unit of the budget amount (e.g., USD)"
  type        = string
  default     = "USD"
}

variable "time_unit" {
  description = "The time unit for the budget (e.g., MONTHLY)"
  type        = string
  default     = "MONTHLY"
}

variable "cost_filters" {
  description = "Cost filters for the budget (e.g., by service)"
  type        = map(string)
  default     = {}
}

# Cost types
variable "include_tax" {
  description = "Include tax in the budget"
  type        = bool
  default     = true
}

variable "include_subscription" {
  description = "Include subscription costs in the budget"
  type        = bool
  default     = true
}

# Notification configuration
variable "notification_comparison_operator" {
  description = "Comparison operator for the notification (e.g., GREATER_THAN)"
  type        = string
}

variable "notification_type" {
  description = "Notification type (e.g., 'ACTUAL' or 'FORECASTED')"
  type        = string
}

variable "notification_threshold" {
  description = "The threshold for triggering the notification"
  type        = number
}

variable "threshold_type" {
  description = "The type of threshold (e.g., 'PERCENTAGE' or 'ABSOLUTE')"
  type        = string
}

variable "subscriber_address" {
  description = "The address of the notification subscriber"
  type        = string
}

variable "subscription_type" {
  description = "The type of subscription (e.g., EMAIL)"
  type        = string
  default     = "EMAIL"
}
