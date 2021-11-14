# Elastic IP for Nat Gateway
resource "aws_eip" "example" {
  vpc = true
}

#nat gateway
resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.public1.id

  tags = {
    Team        = "DevOps"
    Environment = "Dev"
  }
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private3" {
  subnet_id      = aws_subnet.private3.id
  route_table_id = aws_route_table.private.id
}
