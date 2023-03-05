resource "aws_s3_bucket" "mys3-bucket" {
  for_each = {
    dev   = "my-dapp-bucket13"
    test  = "my-tapp-bucket13"
    stage = "my-sapp-bucket13"
    prod  = "my-papp-bucket13"
  }

  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    eachValue   = each.value
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"

  }
}