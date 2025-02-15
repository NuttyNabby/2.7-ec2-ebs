resource "aws_instance" "nabilah_ec2_ebs" {
  ami = data.aws_ami.latest_amazon_linux.id
  instance_type               = "t2.micro"
  key_name                    = "nabilahkeypair"
  subnet_id = "subnet-0d61f850a48e92e1a"
  associate_public_ip_address = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "nabilah_ec2_ebs"
  }
}
