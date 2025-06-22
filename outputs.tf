output "aws_ec2_ip" {
    value = aws_instance.instance.public_ip
  
}