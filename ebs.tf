resource "aws_ebs_volume" "nabilah_ebs" {
  availability_zone = aws_instance.nabilah_ec2_ebs.availability_zone
  size             = 1
}


resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/sdf"  # This might change depending on your AMI (e.g., `/dev/sdf` for Amazon Linux)
  volume_id   = aws_ebs_volume.nabilah_ebs.id
  instance_id = aws_instance.nabilah_ec2_ebs.id
}

