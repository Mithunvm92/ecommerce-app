# Use Default VPC

data "aws_vpc" "default" {
  default = true
}

# Security Group

resource "aws_security_group" "docker_sg" {

  name   = "docker-sg"
  vpc_id = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3004
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance

resource "aws_instance" "app" {

  ami           = "ami-006f82a1d5a27da54"
  instance_type = "t2.micro"
  key_name="mykeypairbatch15"

  vpc_security_group_ids = [
    aws_security_group.docker_sg.id
  ]

  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "ecommerce-app"
  }
}
