
resource "aws_instance" "terraform" {
    count = length(var.instance_names)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all_ssh.id]
  

    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
        }
     )

    }


resource "aws_security_group" "allow_all_ssh" {
  name        = "allow_all_ssh"
  description = "Allow port 22 inbound traffic"


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

 # usually we allow everything in egress
 egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  ipv6_cidr_blocks = ["::/0"]
}

  tags = {
    Name = "allow_ssh"
  }
}