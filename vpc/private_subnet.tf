resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.101.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Team        = "DevOps"
    Environment = "Dev"
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.102.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Team        = "DevOps"
    Environment = "Dev"
  }
}

resource "aws_subnet" "private3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.103.0/24"
  availability_zone = "eu-west-1c"

  tags = {
    Team        = "DevOps"
    Environment = "Dev"
  }
}

