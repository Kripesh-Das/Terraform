module "dev"{
    source = "./AWS_INFRA"
    my-env = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-0f918f7e67a3323f0"
    instance_count = 1
    bucket_count = 1
}

module "stag"{
    source = "./AWS_INFRA"
    my-env = "stag"
    instance_type = "t2.micro"
    ami_id = "ami-0f918f7e67a3323f0"
    instance_count = 1
    bucket_count = 1
}

module "prod"{
    source = "./AWS_INFRA"
    my-env = "prod"
    instance_type = "t2.micro"
    ami_id = "ami-0f918f7e67a3323f0"
    instance_count = 3
    bucket_count = 2
}