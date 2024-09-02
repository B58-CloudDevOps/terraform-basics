resource "null_resource" "main" {}

resource "null_resource" "bar" {}

resource "null_resource" "foo" {}

provider "aws" {}


terraform {
  backend "s3" {}
}