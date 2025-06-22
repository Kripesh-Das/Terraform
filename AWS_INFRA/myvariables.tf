variable "my-env" {
    description = "This is the environment for infra"
    type = string
  
}

variable "ami_id" {
    description = "This is the AMI ID for the EC2"
    type = string
  
}

variable "instance_type"{
    description = "This is the instance for EC2"
    type = string
}

variable "instance_count" {
    description = "Number of instances"
    type = number
  
}

variable "bucket_count" {
    description = "Number of buckets"
    type = number
}