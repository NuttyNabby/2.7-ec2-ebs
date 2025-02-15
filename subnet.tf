# Using data source to fetch public & Private subnet automatically , do not know the public subnet ID
data "aws_subnets" "public_subnets" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
  filter {
    name   = "tag:Name"
    values = ["*public*"] # This will match any subnet with "public" in its Name tag.
  }
}

data "aws_subnets" "private_subnets" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id] 
  }
  filter {
    name   = "tag:Name"
    values = ["*private*"] # This will match any subnet with "private" in its Name tag.
  }
}