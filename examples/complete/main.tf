provider "aws" {
  region = var.region
}

module "domain" {
  source           = "../../"
  context          = module.this.context
  parent_zone_name = var.parent_zone_name
  zone_name        = "$${name}.$${parent_zone_name}"
  ns_record_ttl    = var.ns_record_ttl
  soa_record_ttl   = var.soa_record_ttl
}
