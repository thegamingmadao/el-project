variable "profile" {}
variable "region" {}
variable "shared_credentials_file" {}

provider "aws" {
  shared_credentials_file = "${var.shared_credentials_file}"
  profile     = "${var.profile}"
  region      = "${var.region}"
}
