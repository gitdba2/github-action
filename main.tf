
resource "aws_instance" "example" {
  subnet_id              = "subnet-092d9022b53030041"
  vpc_security_group_ids = ["sg-0eaf1c28c7f786ea6"]
  ami                    = "ami-04d29b6f966df1537"
  instance_type          = "t2.micro"

  tags = {
    Name = "mytag8"
  }
}

resource "aws_security_group" "mySG" {
  name = "onlySG"
  vpc_id = "vpc-08dd3b874c13352da"

  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "mysg"
    from_port   = 8080
    protocol    = "tcp"
    to_port     = 8080
  }
}
