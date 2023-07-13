# Create an S3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = "microsystemsitterraform01052024"

  # Set tags for the bucket
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# Create an EC2 instance
resource "aws_instance" "this" {
  ami                     = "ami-007855ac798b5175e"
  instance_type           = "t2.micro"

  # Set tags for the instance
  tags = {
    Name        = "MyInstance"
  }
}