resource "aws_dynamodb_table" "this" {
  name         = var.remote_backend.dynamodb_table_name
  billing_mode = var.remote_backend.dynamodb_table_billing_mode
  //capacidade por segundo
  #   read_capacity  = 20 //RCU 
  #   write_capacity = 20 //WCU
  hash_key = var.remote_backend.dynamodb_table_hash_key

  attribute {
    name = var.remote_backend.dynamodb_table_hash_key
    type = var.remote_backend.dynamodb_table_hash_key_type
  }

  tags = {
    Name = var.remote_backend.dynamodb_table_name
  }
}