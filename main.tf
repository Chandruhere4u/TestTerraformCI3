# provider "aws" {
#     access_key = "${var.aws_access_key}"
#     secret_key = "${var.aws_secret_key}"
#     region = "${var.region}"
# }

provider "aws" {
  region = "us-east-1"
#   assume_role {
#     role_arn = "arn:aws:iam::350978175498:role/Test-Git-ECS-Role"
#     session_name = "TestTerrformAssumerole"
#   }
  AWS_ACCESS_KEY_ID="AKIAVDN7N6IFNQ7QHD4L"
  AWS_SECRET_ACCESS_KEY="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"
}

  # module "s3" {
  #     source = "<path-to-S3-folder>"
  #     #bucket name should be unique
  #     bucket_name = "<Bucket-name>"
  # }

  resource "aws_instance" "TestInsanceAssumeRole" {
    ami = "ami-01147599e39cb5802"
    instance_type = "t2.micro"
    tags = {
      name="TestInstance2"
    }
  }
