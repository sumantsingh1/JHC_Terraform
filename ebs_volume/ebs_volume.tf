resource "aws_ebs_volume" "jhc_ebs_vol" {
  availability_zone = "us-west-2a"
  size              = 5
  type              = "gp2"
  provider          = aws.us-west-2

  tags = {
    Name = "ebs_volume"
  }
}

resource "aws_volume_attachment" "jhc_vol_attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.jhc_ebs_vol.id
  instance_id = aws_instance.one.id
  provider    = aws.us-west-2
}

resource "aws_ebs_volume" "jhc_ebs_vol_n_virginia" {
  availability_zone = "us-east-1a"
  size              = 6
  type              = "gp2"
  provider          = aws.us-east-1

  tags = {
    Name = "ebs_volume_n_virginia"
  }
}
resource "aws_volume_attachment" "vol_attach_nvirginia" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.jhc_ebs_vol_n_virginia.id
  instance_id = aws_instance.two.id
  provider    = aws.us-east-1
}