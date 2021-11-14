resource "aws_subnet" "main" {
vpc_id = aws_default_vpc.default
cidr_block = "10.0.1.0/24"
availability_zone = data.aws_availability_zones.available.names[0]

  }
