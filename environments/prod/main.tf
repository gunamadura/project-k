module "billing" {
  source                        = "../../modules/billing"
  budget_name                   = "MonthlyBudget"
  budget_type                   = "COST"
  limit_amount                  = 100
  limit_unit                    = "USD"
  time_unit                     = "MONTHLY"
  cost_filters                  = { Service = "AmazonEC2" }
  notification_comparison_operator = "GREATER_THAN"
  include_tax                   = true
  include_subscription          = true
  notification_type             = "ACTUAL"
  notification_threshold        = 80
  threshold_type                = "PERCENTAGE"
  subscriber_address            = "shouryadutt251999@gmail.com"
  subscription_type             = "EMAIL"
}

module "database" {
  source          = "../../modules/database"
  engine          = "sql"
  instance_class  = "db.t2.micro"
  allocated_storage = 20
  username        = "guna"
  password        = "gunasekharmadura"
  subnet_ids      = ["subnet-123456", "subnet-789012"]
  security_group_ids = ["sg-12345678"]
}