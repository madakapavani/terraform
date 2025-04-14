resource "aws_instance" "this" {
  ami = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type = "t3.micro"
  tags = {
    name ="terraform-demo"
    purpose = "terraform-practice"
  }
}
resource "aws_security_group" "allow_tls" {
  name = "allow_tls"
  description = "allow TLS inbound traffic and all outbound traffic"

  tags = {
    name = "allow_tls"
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
