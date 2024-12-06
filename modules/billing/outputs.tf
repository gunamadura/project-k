output "budget_id" {
  description = "The ID of the created AWS Budget"
  value       = aws_budgets_budget.billing_budget.id
}

output "notification_details" {
  description = "Details of the budget notifications"
  value = [
    for n in aws_budgets_budget.billing_budget.notification : {
      notification_type   = n.notification_type
      threshold           = n.threshold
      # comparison_operator = n.comparison_operator
    }
    if n.notification_type == "ACTUAL" # Replace "ACTUAL" with the desired condition
  ]
}
