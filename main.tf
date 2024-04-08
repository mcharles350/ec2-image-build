provider "aws" {
  region = "us-east-1"
}

module "component" {
  source = "./modules/components"

  region = var.region
}

module "recipes" {
  source = "./modules/recipes"

  region               = var.region
  amazon_component_arn = module.component.amazon_component_arn
}
