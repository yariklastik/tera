provider "google" {
  project = var.project_id
  region  = var.region
}

module "instance" {
  source = "./modules/instance"
}
module "firewall" {
  source = "./modules/firewall"
}

