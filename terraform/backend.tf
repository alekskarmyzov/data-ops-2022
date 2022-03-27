terraform {
  backend "s3" {
    bucket  = "akarmyzov"
    encrypt = true
    key     = "terraform/states/k8s-demo/./terraform.tfstate"
    region  = "eu-central-1"
  }
}
