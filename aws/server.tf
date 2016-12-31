provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "server" {
  ami           = "${var.ami_id}"
  instance_type = "${var.ec2_instance_type}"
  key_name      = "${var.key_pair_name}"

  user_data = "${file("server.sh")}"

  provisioner "file" {
    source      = "nginx/server.conf"
    destination = "/home/ubuntu/example.com"

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("${var.key_file_path}")}"
    }
  }

  root_block_device {
    volume_size = "${var.volume_size}"
  }

  tags {
    Name = "ubuntu.nginx.nodejs"
  }
}
