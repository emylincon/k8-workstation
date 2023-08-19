data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-arm64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_vpc" "selected" {
  default = true
}

data "aws_subnet" "selected" {
  availability_zone = var.az
  vpc_id            = data.aws_vpc.selected.id
}


resource "aws_security_group" "sg" {
  name        = var.name
  description = "sg for ${var.name}"
  vpc_id      = data.aws_vpc.selected.id

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.name
  }
}

resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = data.aws_subnet.selected.id
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.sg.id]
  associate_public_ip_address = true
  user_data                   = <<EOF
#!/bin/bash
USER=ubuntu
sudo snap install docker 
sudo groupadd docker
sudo usermod -aG docker ubuntu && newgrp docker
sudo chown "$USER":"$USER" /var/run/docker -R
sudo chown "$USER":"$USER" /var/run/docker.sock -R

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-arm64
sudo install minikube-linux-arm64 /usr/local/bin/minikube

snap install kubectl --classic
echo 'source <(kubectl completion bash)' >>~/.bashrc
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null
sudo chmod a+r /etc/bash_completion.d/kubectl

sudo apt install vim

EOF

  tags = {
    Name = var.name
  }
}
