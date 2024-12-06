resource "aws_budgets_budget" "billing_budget" {
  name         = var.budget_name
  budget_type  = var.budget_type
  limit_amount = var.limit_amount
  limit_unit   = var.limit_unit
  time_unit    = var.time_unit

  cost_types {
    include_tax          = var.include_tax
    include_subscription = var.include_subscription
    use_blended = false
  }

  notification {
    comparison_operator = var.notification_comparison_operator
    notification_type   = var.notification_type
    threshold           = var.notification_threshold
    threshold_type      = var.threshold_type

    # subscriber {
    #   address           = var.subscriber_address
    #   subscription_type = var.subscription_type
    # }
  }
}
