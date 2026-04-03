resource "tls_private_key" "mykey" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "local_file" "pem_file" {
  content  = tls_private_key.mykey.private_key_pem
  filename = "mykey.pem"
}

resource "aws_key_pair" "generated_key" {
  key_name   = "terraform-key"
  public_key = tls_private_key.mykey.public_key_openssh
}

resource "aws_security_group" "sg" {
  name = "allow-ssh-http"

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
}

resource "aws_instance" "server" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"

  key_name = aws_key_pair.generated_key.key_name

  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "MyTerraformServer"
  }
}

output "public_ip" {
  value = aws_instance.server.public_ip
}