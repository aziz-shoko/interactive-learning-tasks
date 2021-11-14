resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "mysql_security"
    from_port        = 3306
    to_port          = 3306
    protocol         = "mysql"
    cidr_blocks      = ["10.0.0.0/16"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["10.0.0.0/16"]

  }

  }
