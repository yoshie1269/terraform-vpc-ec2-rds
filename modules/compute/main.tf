resource "aws_key_pair" "main" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
  tags = {
    Name = var.key_name
  }
}

resource "aws_instance" "web" {
  ami                         = var.ami_id
  instance_type               = var.ec2_instance_type
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [var.ec2_security_group_id]
  key_name                    = aws_key_pair.main.key_name
  associate_public_ip_address = true
  tags = {
    Name = "terraform-web-ec2"
  }
}
