
#Creating ec2 instance

resource "aws_instance" "ec2_example" {
    ami = "ami-0dfcb1ef8550277af" 
    instance_type = "t2.micro"
    tags = {
      Name ="${terraform.workspace}-instance"
    }
}

# Creating VPC
resource "aws_vpc" "demovpc" {
  cidr_block       = "10.50.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Demo-VPC"
  }
}
