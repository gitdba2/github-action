
resource "aws_instance" "example" {
  subnet_id = "subnet-092d9022b53030041"
  #vpc_security_group_ids = ["sg-0eaf1c28c7f786ea6"]
  vpc_security_group_ids = [aws_security_group.mySG.id]
  ami                    = "ami-04d29b6f966df1537"
  instance_type          = "t2.micro"

  tags = {
    Name = "mytag12"
  }
}

resource "aws_security_group" "mySG" {
  name        = "onlySG"
  description = "access from dallas"
  vpc_id      = "vpc-08dd3b874c13352da"

  ingress {
    cidr_blocks = ["99.106.37.194/32"]
    description = "mysg"
    from_port   = 22
    protocol    = "TCP"
    to_port     = 22
  }
}
