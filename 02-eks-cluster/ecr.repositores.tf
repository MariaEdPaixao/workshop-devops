resource "aws_ecr_repository" "foo" {
    count = length(var.ecr_repositories)
  name                 = var.ecr_repositories[count.index]
  image_tag_mutability = "MUTABLE"
}