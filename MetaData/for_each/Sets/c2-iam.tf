resource "aws_iam_user" "my-iam-user" {

  for_each = toset(["TJack", "TJames", "TMadhu", "TDane"])
  name     = each.key
  #Set of stings
  # name = each.value ---> each.key=each.value

}