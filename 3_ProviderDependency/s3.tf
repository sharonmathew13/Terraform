resource "random_pet" "petname" {
  length = 5
  separator = "-"
}

resource "aws_s3_bucket" "sample" {
  bucket = random_pet.petname.id
  acl = "public-read"
  #Region need not be mentioned for version> 3.0 of aws
}
