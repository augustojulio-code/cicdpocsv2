variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}

provider "aws" {
  region = var.aws_region

}

resource "aws_ecr_repository" "apiola" {
  name = "apiola"
}
