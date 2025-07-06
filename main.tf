module "vpc" {
  source = "./modules/networking"
  region = var.region
  vpc_cidr = var.vpc_cidr
  public_subnet = var.public_subnet
  availability_zone = var.availability_zone
  private_subnet = var.private_subnet
}

module "rds" {
  source               = "./modules/aurora-rds"
  name                 = var.name
  private_subnets      = module.vpc.private_subnet
  db_username          = var.db_username
  database_name        = var.database_name
  rds_security_group_ids  = [module.vpc.rds_security_group_aurora_id]

  depends_on = [
    module.vpc
  ]
}

module "iam" {
  source = "./modules/iam"
  name = var.name
  aws_iam_openid_connect_provider_arn = module.eks.aws_iam_openid_connect_provider_arn
  aws_iam_openid_connect_provider_extract_from_arn = module.eks.aws_iam_openid_connect_provider_extract_from_arn

  depends_on = [
    module.vpc
  ]

}

