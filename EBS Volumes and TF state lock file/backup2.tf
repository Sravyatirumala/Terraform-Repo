resource "aws_ebs_snapshot" "instance2_snapshot" {
  volume_id = "vol-051c94e6597809b81"

  tags = {
    Name = "instance2-snapshot"
  }
}

resource "aws_ebs_volume" "snapvolume2" {
  availability_zone = "us-east-2a"
  snapshot_id = aws_ebs_snapshot.instance2_snapshot.id
  tags = {
    Name = "snapvolume2"
  }
}


resource "aws_volume_attachment" "ebs_attachment2" {
  device_name = "/dev/xvdbb"
  volume_id   = aws_ebs_volume.snapvolume2.id
  instance_id = "i-0614fa850cc0f21b3"
}
