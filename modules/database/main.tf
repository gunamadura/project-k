resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "${var.db_name}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.db_name}-subnet-group"
  }
}

resource "aws_rds_cluster" "db_cluster" {
  engine             = var.engine
  engine_mode        = "provisioned"
  master_username    = var.username
  master_password    = var.password
  database_name      = var.db_name
  skip_final_snapshot = true

  cluster_identifier = "${var.db_name}-cluster"
  tags = {
    Name = "${var.db_name}-cluster"
  }
}

resource "aws_db_instance" "db_instance" {
  identifier              = "${var.db_name}-instance"
  engine                  = var.engine
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  username                = var.username
  password                = var.password
  db_subnet_group_name    = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids  = var.security_group_ids
  publicly_accessible     = false
  multi_az                = false

  tags = {
    Name = "${var.db_name}-instance"
  }
}
