#create a subnet in the above vpc
resource "aws_subnet" "arunwebsubnet" {
  vpc_id     = aws_vpc.arunVPC.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "Arundemo web subnet"
  }
}

resource "aws_subnet" "arundbsubnet" {
  vpc_id     = aws_vpc.arunVPC.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "Arundemo DB subnet"
  }
}

#create a VPC with 10.x.0.0/16
resource "aws_vpc" "arunVPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "arunVNetwork"
  }
