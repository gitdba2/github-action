
resource "aws_instance" "example" {
    subnet_id = "subnet-092d9022b53030041"
    vpc_security_group_ids = [ "sg-0eaf1c28c7f786ea6" ]
    ami = "ami-04d29b6f966df1537"
    instance_type = "t2.micro"

    tags = {
        Name = "mytag7"
    }
}
