resource "aws_db_instance" "default" {
  vpc_id = aws_vpc.main
  allocated_storage    = 50
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "admin"
  skip_final_snapshot  = true
  max_allocated_storage = 500
  availability_zone = data.aws_availability_zones.available.names[0]
  auto_minor_version_upgrade = true
}
