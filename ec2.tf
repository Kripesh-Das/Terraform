## KEY PAIR 

resource "aws_key_pair" "deployer"{
    key_name = "terra-key"
    public_key = file("/home/itskripesh/Projects/Terraform/terra-key.pub")
}

## VPC

resource "aws_default_vpc" "default" {
  
}

## SECURITY GROUP 

resource "aws_security_group" "security" {
    name = "allow ports"
    description = "Used for opening up ports for ec2 instance"
    vpc_id = aws_default_vpc.default.id # interpolation

    ingress { # incoming traffic
        from_port = 22
        to_port = 22
        protocol = "tcp"
        description = "SSH"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress{ # outgoing traffic
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "outgoing traffic"    
    }
}

## EC2

resource "aws_instance" "instance" {
    ami = "ami-0f918f7e67a3323f0"
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer.key_name # interpolation
    security_groups = [aws_security_group.security.name]
    tags = {
        Name = "terra-automate"
    }
  
}   