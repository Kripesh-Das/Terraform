resource "aws_s3_bucket" "my_bucket" {
  count  = var.bucket_count
  bucket = "${var.my-env}-ulti-balti-itskripesh-2022-${count.index}"
  tags = {
    Name = "${var.my-env}-ulti-balti-itskripesh-2022-${count.index}"
    environment = var.my-env
  }
}