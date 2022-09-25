
  data "aws_ami" "app" {
    most_recent = true
 
    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }
 
    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
 
    filter {
        name   = "architecture"
        values = ["x86_64"]
    }
 
}

resource "aws_instance" "application" {
  ami   = data.aws_ami.app.id
  instance_type = "t2.micro"
   subnet_id = aws_subnet.pri_sub1.id
   availability_zone = var.pri1_az
   vpc_security_group_ids = [aws_security_group.allow_port.id]
  
  tags = {
    Name = "application"
  }
  }
