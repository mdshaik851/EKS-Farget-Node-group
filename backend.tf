
terraform {
  backend "s3" {
    bucket       = "uc-eks-farget-node-group-hybrid"
    key          = "uc-eks-farget-node-group-hybrid"
    region       = "us-west-1"
    encrypt      = true
    use_lockfile = true
  }
}