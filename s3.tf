## RESOURCE BLOCK
resource "aws_s3_bucket" "my_bucket" {
    bucket = "ulti-balti-itskripesh-20250622"
    tags = {
        Name = "ulti-balti-itskripesh-20250622"
    }
}