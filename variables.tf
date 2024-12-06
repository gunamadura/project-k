# # Example: Declaring a string variable
# variable "budget_name" {
#   description = "The name of the budget"
#   type        = string
# }

# # Example: Declaring a number variable
# variable "limit_amount" {
#   description = "The budget limit amount"
#   type        = number
# }

# # Example: Declaring a boolean variable
# variable "include_tax" {
#   description = "Whether to include taxes in the budget calculation"
#   type        = bool
#   default     = true
# }

# # Example: Declaring a map
# variable "cost_filters" {
#   description = "Cost filters for the budget (e.g., by service)"
#   type        = map(string)
#   default     = {
#     Service = "AmazonEC2"
#   }
# }
# subscriber {
#       address          = var.subscriber_address
#       subscription_type = var.subscription_type
#     }