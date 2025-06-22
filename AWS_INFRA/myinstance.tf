## EC2

resource "aws_instance" "instance" {
    ami = var.ami_id
    count = var.instance_count
    instance_type = var.instance_type
    tags = {
        Name = "${var.my-env}-instance"
    }
  
}   