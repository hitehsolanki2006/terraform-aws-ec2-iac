resource "aws_security_group" "terraform_sg" {
  name        = "terraform-sg"
  description = "Allow SSH and HTTP access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-security-group"
  }
}

resource "aws_instance" "terraform_ec2" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [
    aws_security_group.terraform_sg.name
  ]

  tags = {
    Name = "Terraform-EC2"
    Tool = "Terraform"
  }
}
